-- week data
Seance = Seance or error("Seance dependancy not satified for this_week.lua script")
return {
    _6A = Seance:new(
        "6A",
        13,
        "chap1act4situation1 ok", -- last time
        "", -- for today
        "", -- next_time
        "", --punition
        "", -- remarque
        "", -- creneau retenue
        "15h55", -- horaire
        "plan de classe + rappel/discussion + finir act4 + chap2 (act1)" -- prgramme_du_jour
    ),
    _6B = Seance:new(
        "6B",
        24,
        "chap1 act3 ok (cours?)", -- last time
        "", -- for today
        "", -- next_time
        "", --punition
        "", -- remarque
        "", -- creneau retenue
        "11h25", -- horaire
        "plan de classe + rappel/discussion + verif cours act3 ok + act4" -- prgramme_du_jour
    ),
    _6D = Seance:new(
        "6D",
        24,
        "chap1act4situation1 résumé ok", -- last time
        "", -- for today
        "", -- next_time
        "", --punition
        "", -- remarque
        "", -- creneau retenue
        "14h55", -- horaire
        "plan de classe + rappel/discussion + finir act4 + chap2" -- prgramme_du_jour
    ),
    _6E = Seance:new(
        "6E",
        24,
        "act4 distribué (situation1 à peine commencé)", -- last time
        "", -- for today
        "", -- next_time
        "", --punition
        "", -- remarque
        "", -- creneau retenue
        "14h55", -- horaire
        "plan de classe + rappel/discussion + finir act4 + chap2" -- prgramme_du_jour
    ),
    _6G = Seance:new(
        "6G",
        24,
        "corrigé ex 1,2 + act3 commencé à recop le cours", -- last time
        "", -- for today
        "", -- next_time
        "", --punition
        "", -- remarque
        "", -- creneau retenue
        "9h15", -- horaire
        "plan de classe + rappel/discussion + recop cours act3 + act4 + chap2" -- prgramme_du_jour
    ),
    _6H = Seance:new(
        "6H",
        24,
        "", -- last time
        "act3Q4 à finir", -- for today
        "", -- next_time
        "", --punition
        "", -- remarque
        "", -- creneau retenue
        "12h25", -- horaire
        "plan de classe + rappel/discussion + corrigé act3Q4 + cours + act4" -- prgramme_du_jour
    ),
    _5C = Seance:new(
        "5C",
        24,
        "chap2act1Q1", -- last time
        "", -- for today
        "", -- next_time
        "", --punition
        "", -- remarque
        "sA :Lun15-17h -- sB Lun16h Mer8h", -- creneau retenue
        "11h25", -- horaire
        "plan de classe + rappel/discussion + finir chap2act1 + act2" -- prgramme_du_jour
    ),
    _5D = Seance:new(
        "5D",
        24,
        "chap2act1Q2?", -- last time
        "", -- for today
        "", -- next_time
        "", --punition
        "", -- remarque
        "sA Ven15h sB Mer8-10h", -- creneau retenue
        "14h55", -- horaire
        "plan de classe + rappel/discussion + finir act1 + act2" -- prgramme_du_jour
    ),
    _5F = Seance:new(
        "5F",
        24,
        "eval chap1", -- last time
        "", -- for today
        "", -- next_time
        "", --punition
        ",", -- remarque
        "sA Jeu -- sB Vscol Jeu8h", -- creneau retenue
        "10h15", -- horaire
        "plan de classe + rappel/discussion + chapitre2 + act1" -- prgramme_du_jour
    ),
    _5G = Seance:new(
        "5G",
        24,
        "act4 ok", -- last time
        "", -- for today
        "", -- next_time
        "", --punition
        "", -- remarque
        "Lun8h(vdc) Ven16h", -- creneau retenue
        "12h25", -- horaire
        "plan de classe + rappel/discussion + chapitre 2" -- prgramme_du_jour
    ),
    _5H = Seance:new(
        "5H",
        21,
        "eval chap1", -- last time
        "", -- for today
        "", -- next_time
        "", --punition
        "", -- remarque
        "sA Mar16h --sA et sB Ven14h", -- creneau retenue
        "10h15", -- horaire
        "plan de classe + rappel/discussion(eval) + chapitre 2" -- prgramme_du_jour
    )
}