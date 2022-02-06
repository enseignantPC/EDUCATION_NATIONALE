-- week data
Seance = Seance or error("Seance dependacy not satified for this_week.lua script")
return {
    _6A = Seance:new(
        "6A",
        14,
        "", -- last time
        "", -- for today
        "", -- next_time
        "", --punition
        "", -- remarque
        "", -- creneau retenue
        "", -- horaire
        "act2Q3~ + cours + act3" -- prgramme_du_jour
    ),
    _6B = Seance:new(
        "6B",
        23,
        "", -- last time
        "finir act2", -- for today
        "", -- next_time
        "", --punition
        "", -- remarque
        "", -- creneau retenue
        "11h25", -- horaire
        "corriger act2Q4~ + cours+ act3" -- prgramme_du_jour
    ),
    _6D = Seance:new(
        "6D",
        24,
        "", -- last time
        "", -- for today
        "", -- next_time
        "", --punition
        "ipr act2 pour katy", -- remarque
        "", -- creneau retenue
        "14h55", -- horaire
        "changer katy marlie etc de place + cours act2+ act3" -- prgramme_du_jour
    ),
    _6E = Seance:new(
        "6E",
        24,
        "act2? cours?", -- last time
        "", -- for today
        "", -- next_time
        "", --punition
        "", -- remarque
        "", -- creneau retenue
        "14h55", -- horaire
        "act2 + cours? + act3" -- prgramme_du_jour
    ),
    _6G = Seance:new(
        "6G",
        22,
        "", -- last time
        "", -- for today
        "", -- next_time
        "", --punition
        "", -- remarque
        "", -- creneau retenue
        "9h15", -- horaire
        "eval1 + act3" -- prgramme_du_jour
    ),
    _6H = Seance:new(
        "6H",
        24,
        "act2Q2 (Q3 oral) + eval 1", -- last time
        "", -- for today
        "", -- next_time
        "nicolas inès doudou alperen mirza", --punition
        "attention, nicolas et alperen provoquent mirza", -- remarque
        "", -- creneau retenue
        "12h25", -- horaire
        "punition + act2Q3 + cours" -- prgramme_du_jour
    ),
    _5C = Seance:new(
        "5C",
        24,
        "eval 3 + act4", -- last time
        "réviser + act4 + cours", -- for today
        "", -- next_time
        " àramasser -1 : Hadja, Hawa", --punition
        "", -- remarque
        "sA :Lun15-17h -- sB Lun16h Mer8h", -- creneau retenue
        "11h25", -- horaire
        "evaluation" -- prgramme_du_jour
    ),
    _5D = Seance:new(
        "5D",
        24,
        "act3 cours + ex3", -- last time
        "", -- for today
        "EVAL", -- next_time
        "à ramasser: ilian Jade Nassim Mhamadou Djouma", --punition
        "", -- remarque
        "sA Ven15h sB Mer8-10h", -- creneau retenue
        "14h55", -- horaire
        "eval3 + ex3 + act4" -- prgramme_du_jour
    ),
    _5F = Seance:new(
        "5F",
        24,
        "act3", -- last time
        "act3 redac cours révision", -- for today
        "EVALUATION", -- next_time
        "à ramasser Aisse Nawel Fanta", --punition
        "sursis : mamadou, Nathan, Fatoumata, Nawel, Sohane, Fanta, Bakary, Rhojat", -- remarque
        "sA Jeu -- sB Vscol Jeu8h", -- creneau retenue
        "10h15", -- horaire
        "exercices + act4" -- prgramme_du_jour
    ),
    _5G = Seance:new(
        "5G",
        22,
        "act3", -- last time
        "", -- for today
        "finir act34 + cours + EVALUATION", -- next_time
        "(-1) Dolynda Radouana Mariam Pharel Marie-love", --punition
        "impr act4 x 2 !!!!!!!!!!!", -- remarque
        "Lun8h(vdc) Ven16h", -- creneau retenue
        "12h25", -- horaire
        "exercices + act4 " -- prgramme_du_jour
    ),
    _5H = Seance:new(
        "5H",
        22,
        "", -- last time
        "", -- for today
        "", -- next_time
        "", --punition
        "", -- remarque
        "sA Mar16h --sA et sB Ven14h", -- creneau retenue
        "10h15", -- horaire
        "EVAL" -- prgramme_du_jour
    )
}
