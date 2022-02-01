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
        "act2Q2 à l'oral", -- last time
        "", -- for today
        "", -- next_time
        "ouswath", --punition
        "", -- remarque
        "", -- creneau retenue
        "11h25", -- horaire
        "act2Q2~ + cours + act3 (à impr)" -- prgramme_du_jour
    ),
    _6D = Seance:new(
        "6D",
        24,
        "eval1 + act2?", -- last time
        "", -- for today
        "", -- next_time
        "mamadou", --punition
        "", -- remarque
        "", -- creneau retenue
        "14h55", -- horaire
        "act2? + cours? + act3" -- prgramme_du_jour
    ),
    _6E = Seance:new(
        "6E",
        24,
        "act2distrib", -- last time
        "", -- for today
        "", -- next_time
        "", --punition
        "", -- remarque
        "", -- creneau retenue
        "14h55", -- horaire
        "act2 + cours + act3" -- prgramme_du_jour
    ),
    _6G = Seance:new(
        "6G",
        14,
        "act2 ok", -- last time
        "eval1", -- for today
        "", -- next_time
        "", --punition
        "", -- remarque
        "", -- creneau retenue
        "15h55", -- horaire
        "eval1 act3" -- prgramme_du_jour
    ),
    _6H = Seance:new(
        "6H",
        24,
        "act2Q2", -- last time
        "", -- for today
        "", -- next_time
        "", --punition
        "", -- remarque
        "", -- creneau retenue
        "12h25", -- horaire
        "act2Q2 + cours + act3" -- prgramme_du_jour
    ),
    _5C = Seance:new(
        "5C",
        24,
        "correct ex123 + act4 distrib", -- last time
        "", -- for today
        "eval :)", -- next_time
        "Hadja Tako, Hawa (R3 x 2)", --punition
        "", -- remarque
        "sA :Lun15-17h -- sB Lun16h Mer8h", -- creneau retenue
        "11h25", -- horaire
        "eval 3 + act4" -- prgramme_du_jour
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
        "eval 2 ? act3 Q8~", -- last time
        "", -- for today
        "", -- next_time
        "à ramasser : Aïsse Nawel Fanta", --punition
        ",", -- remarque
        "sA Jeu -- sB Vscol Jeu8h", -- creneau retenue
        "10h15", -- horaire
        "" -- prgramme_du_jour
    ),
    _5G = Seance:new(
        "5G",
        22,
        "recopié du texte", -- last time
        "", -- for today
        "EVAL FINALE", -- next_time
        "Dolynda Radouane Mariam Pharel MarieLove", --punition
        "", -- remarque
        "Lun8h(vdc) Ven16h", -- creneau retenue
        "12h25", -- horaire
        "corriger ex1 2 3 + act3 express" -- prgramme_du_jour
    ),
    _5H = Seance:new(
        "5H",
        22,
        "eval2 act4 ", -- last time
        "cours + ex3", -- for today
        "EVAL", -- next_time
        "", --punition
        "", -- remarque
        "sA Mar16h --sA et sB Ven14h", -- creneau retenue
        "10h15", -- horaire
        "ex3 + dernières révisions + chapitre3" -- prgramme_du_jour
    )
}
