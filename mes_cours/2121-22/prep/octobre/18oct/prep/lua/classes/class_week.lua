Jour = Jour or error("dependancy Jour not satisfied for class Week")


-- week classe
local Week = {}
local meta = {
    __index = function (k,v,z)
        -- error("Field " .. tostring(v) .. " Doesnt exist for class Week")
    end,
    __newindex = function (k,v,z)
        error("Field " .. tostring(v) .. " Doesnt exist and shouldnt be set for class Week")
    end,
    __tostring = function(t)
        return "the day is my ennemy"
    end
}

function Week:new(
            t,
            is_semaine_A
        )
        local week = {}
        local lundi = Jour:new("Lundi")
        lundi:insert(t._6G)
        lundi:insert(t._5F)
        lundi:insert(t._5C)
        lundi:insert(t._5G)
        lundi:insert(t._5D)
        lundi:insert(t._6A)
        if (is_semaine_A)
        then
            local mardi = Jour:new("Mardi")
            mardi:insert(t._6D) 
            mardi:insert(t._5G:groupe_with_horaire("15h55 et 17h05")) 

            local mercredi = Jour:new("Mercredi")
            mercredi:insert(t._5H)
            mercredi:insert(t._6B) 
            mercredi:insert(t._6H) 
                
            local jeudi = Jour:new("Jeudi")
            jeudi:insert(t._5F:groupe_with_horaire("14h55 et 15h55"))
        
            local vendredi = Jour:new("Vendredi")
            vendredi:insert(t._6E)
            vendredi:insert(t._5C:groupe_with_horaire("15h55 et 17h05"))
                
            week = {
                semaine = "A",
                lundi = lundi,
                mardi = mardi,
                mercredi = mercredi,
                jeudi = jeudi,
                vendredi = vendredi,
            }
        else
            -- semaineB
            local mercredi = Jour:new("Mercredi")
            mercredi:insert(t._6B:copy_with_horaire("9h15"))
            mercredi:insert(t._5H)
            mercredi:insert(t._6D:copy_with_horaire("11h25"))
            mercredi:insert(t._6H)

            local vendredi = Jour:new("Vendredi")
            vendredi:insert(t._5H:groupe_with_horaire("11h25 et 12h25")) 
            vendredi:insert(t._6E) 
            vendredi:insert(t._5D:groupe_with_horaire("15h55 et 17h05")) 
            
            week = {
                semaine = "B",
                lundi=lundi,
                mercredi=mercredi,
                vendredi=vendredi,
            }
        end
        
    setmetatable(week,{
        __index = Week,
        __newindex = Week})
    return week
end

--  return a string
function Week:display()
    local res = ""
    for k,v in ipairs({"lundi","mardi","mercredi","jeudi","vendredi"})
    do
        if (self[v] ~= nil)
        then
            -- if v ~= "lundi"
            -- then  error(tostring(self[v].day_name)) end
            res = res .. self[v].day_name  .. "\n\n"  
            for k,seance in ipairs(self[v])
            do    
                res = res .. seance:display()
            end
            res = res .. "\\newpage" .. "\n\n" 
        end
    end
    return res
end

function Week:display_as_table(date)
    local semaine_label = "Semaine " .. self.semaine
                        
    local res = ""
    res = res .. [[
\begin{center}
\begin{longtable}{|ll| p{16cm}|}
\hline
\multicolumn{1}{|c|}{\cellcolor{Gray0!50!black}]] .. semaine_label ..  [[} &
\multicolumn{2}{|c|}{\cellcolor{Gray0!70!black}\Large\textbf{Semaine du ]] .. date .. [[}}\\
\hline
    ]]
    
    for k,v in ipairs({"lundi","mardi","mercredi","jeudi","vendredi"})
    do
        if (self[v] ~= nil)
        then
            -- res = res .. [[\vspace{0cm}]]
            res = res .. [[\multicolumn{3}{|c|}{\cellcolor{Gray0}\LARGE\textbf{]].. self[v].day_name  .. [[}}\\]]
        for k,seance in ipairs(self[v])
            do    
                res = res .. seance:display_as_table()
            end
        end
    end
    
    res = res .. [[
    \end{longtable}
    \end{center}]]
    return res
end


setmetatable(Week,meta)
return Week