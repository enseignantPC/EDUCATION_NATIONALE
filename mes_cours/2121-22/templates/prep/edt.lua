local date = date or "11 oct 2021"
local is_semaine_A = is_semaine_A or true

local function copy(table)
    a = {}
    for k,v in pairs(table)
    do
       a[k]=v 
    end
    return a
end

function print_kv(table,iter_)
    local iter_ = iter_ or 0
    local sep = "    "
    for k,v in pairs(table)
    do
        if type(v)=="table"
        then
            local str_res = tostring(k)
            for i=1,iter_ 
            do
                str_res = sep .. str_res    
            end
            print(str_res," :")
            print_kv(v,iter_+1)
            -- print("-----")
        else
            local str_res = tostring( k) .. " -> ".. tostring( v) 
            for i=1,(iter_+1) 
            do
                str_res = sep .. str_res    
            end
            print(str_res)
        end
    end
end

local classes = {
    date = date,
    _6A={
        classe =" _6A",
        nb_eleve = 13,
        la_derniere_fois = "",
        a_avoir_pour_aujourdhui = "",
        a_faire_pourla_prochaine_fois = "",
        remarque = "",
        punition = "",
        creneau_retenue="",
        first_time_in_week = false
    },
    _6B={
        classe =" _6B",
        nb_eleve = 24,
        la_derniere_fois = "",
        a_avoir_pour_aujourdhui = "",
        a_faire_pourla_prochaine_fois = "",
        remarque = "",
        punition = "",
        creneau_retenue="",
        first_time_in_week = false
    },
    _6D={
        classe =" _6D",
        nb_eleve = 24,
        la_derniere_fois = "",
        a_avoir_pour_aujourdhui = "",
        a_faire_pourla_prochaine_fois = "",
        remarque = "",
        punition = "",
        creneau_retenue="",
        first_time_in_week = false
    },
    _6E={
        classe =" _6E",
        nb_eleve = 24,
        la_derniere_fois = "",
        a_avoir_pour_aujourdhui = "",
        a_faire_pourla_prochaine_fois = "",
        remarque = "",
        punition = "",
        creneau_retenue="",
        first_time_in_week = false,
    },
    _6G={
        classe =" _6G",
        nb_eleve = 24,
        la_derniere_fois = "",
        a_avoir_pour_aujourdhui = "",
        a_faire_pourla_prochaine_fois = "",
        remarque = "",
        punition = "",
        creneau_retenue="",
        first_time_in_week = false,
    },
    _6H={
        classe =" _6H",
        nb_eleve = 24,
        la_derniere_fois = "",
        a_avoir_pour_aujourdhui = "",
        a_faire_pourla_prochaine_fois = "",
        remarque = "",
        punition = "",
        creneau_retenue="",
        first_time_in_week = false,
    },
    _5C={
        classe =" _5C",
        nb_eleve = 24,
        la_derniere_fois = "",
        a_avoir_pour_aujourdhui = "",
        a_faire_pourla_prochaine_fois = "",
        remarque = "",
        punition = "",
        creneau_retenue="",
        first_time_in_week = false,
    },
    _5D={
        classe =" _5D",
        nb_eleve = 24,
        la_derniere_fois = "",
        a_avoir_pour_aujourdhui = "",
        a_faire_pourla_prochaine_fois = "",
        remarque = "",
        punition = "",
        creneau_retenue="",
        first_time_in_week = false,
    },
    _5F={
        classe =" _5F",
        nb_eleve = 24,
        la_derniere_fois = "",
        a_avoir_pour_aujourdhui = "",
        a_faire_pourla_prochaine_fois = "",
        remarque = "",
        punition = "",
        creneau_retenue="",
        first_time_in_week = false,
    },
    _5G={
        classe =" _5G",
        nb_eleve = 24,
        la_derniere_fois = "",
        a_avoir_pour_aujourdhui = "",
        a_faire_pourla_prochaine_fois = "",
        remarque = "",
        punition = "",
        creneau_retenue="",
        first_time_in_week = false,
    },
    _5H={
        classe =" _5H",
        nb_eleve = 21,
        la_derniere_fois = "",
        a_avoir_pour_aujourdhui = "",
        a_faire_pourla_prochaine_fois = "",
        remarque = "",
        punition = "",
        creneau_retenue="",
        first_time_in_week = false,
    },

        -- returns a list of table with :
        --       -> full info if first time you see the class
        --       -> not full info if second time you see the class + first_time_in_week = true
    make_week = function (table,is_semaine_A)
        -- print("is_semaine_A",is_semaine_A)
        local lundi = {
            jour="lundi",
            table._6G,
            table._5F,
            table._5C,
            table._5G,
            table._5D,
            table._6A,
         } 
        if (is_semaine_A)
        then
            -- print("BEFORE")
            -- print_kv(table._5G)
            local _5G_grp = copy(table._5G)
            -- print("HAVEWORKED?")
            -- print_kv(table._5G)
            -- print_kv(_5G_grp)
            _5G_grp.first_time_in_week = false

            local mardi = {
            jour="mardi",
            table._6D,
            _5G_grp,
            }
            
            local mercredi = {
                jour="mercredi",
                table._5H,
                table._6B,
                table._6H,
                }
                
            local _5F_grp = copy(table._5F)
            _5F_grp.first_time_in_week = false    
            local jeudi = {
                jour="jeudi",
                _5F_grp
                }

            local _5C_grp = copy(table._5C)
            _5C_grp.first_time_in_week = false    

            local vendredi = {
                jour="vendredi",
                table._6E,
                _5C_grp
            }
            local week = {
                semaine = "A",
                lundi = lundi,
                mardi = mardi,
                mercredi = mercredi,
                jeudi = jeudi,
                vendredi = vendredi,
            }
            return week
        else
            -- semaineB
            local mercredi = {
                jour="mercredi",
                table._6B,
                table._5H,
                table._6D,
                table._6H,
                }

            local _5H_grp = copy(table._5H)
            _5H_grp.first_time_in_week = false    
                    
            local _5D_grp = copy(table._5D)
            _5D_grp.first_time_in_week = false        
            local vendredi = {
                jour="vendredi",
                _5H_grp,
                table._6E,
                _5D_grp,
            }
            local week = {
                semaine = "B",
                lundi=lundi,
                mercredi=mercredi,
                vendredi=vendredi,
            }
            return week
        end
    end
}
-- 

week = classes:make_week(is_semaine_A)

-- if (true)
if not (tex)
then
    print("Tex table is not available")
    print("This would be printed to tex:")
    tex = {print = print,sprint=print}
end

function day_to_string(day)
    res = ""
    for i,v in ipairs(day)
    do
        -- debut de seance
        res = res .. seance_to_string(v) -- contenu de seance
        -- fin de seance
    end
    return res
end

function seance_to_string(seance)
    res = ""
    res = res .. seance.classe
    return res
end

dofile("readall.lua")
tex.print("doing work")
res = read_all("tab.txt")
texio.write_nl("LUADEBUG")
texio.write_nl(res)
texio.write_nl("LUADEBUG")
tex.print(res)

-- print_day(week.lundi)

-- tex.print([[multiline 
-- a


-- thing]])
-- return classes:make_week(is_semaine_A)