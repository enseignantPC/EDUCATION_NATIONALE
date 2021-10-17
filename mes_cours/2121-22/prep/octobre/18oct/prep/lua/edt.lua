local date = date or "18 oct 2021"
-- local is_semaine_A = is_semaine_A or error("didnt set isSemaineA")
dofile("/home/astrale/Coding/latex/libs/preamble.lua")


-- Classe = dofile("class_classe.lua")
Jour = dofile("lua/classes/class_jour.lua")
Seance = dofile("lua/classes/class_seance.lua")
Week = dofile("lua/classes/class_week.lua")

local classes = dofile("lua/this_week.lua")


week = Week:new(classes,is_semaine_A)


my_tex.try(
    function ()
        my_tex.print(week:display_as_table(date))
    end,
    false
)
