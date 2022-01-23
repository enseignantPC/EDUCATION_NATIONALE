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
        "15h55", -- horaire
        "DISTRIBUER COURS act1 + corrigé act1 + faire act2" -- prgramme_du_jour
    ),
    _6B = Seance:new(
        "6B",
        23,
        "corrigé act1", -- last time
        "", -- for today
        "eval1", -- next_time
        "", --punition
        "", -- remarque
        "", -- creneau retenue
        "11h25", -- horaire
        "Keïna compas + recopier cours act1 + act2" -- prgramme_du_jour
    ),
    _6D = Seance:new(
        "6D",
        24,
        "act1 + cours", -- last time
        "", -- for today
        "", -- next_time
        "", --punition
        "", -- remarque
        "", -- creneau retenue
        "14h55", -- horaire
        "eval 1 + act2 + cours" -- prgramme_du_jour
    ),
    _6E = Seance:new(
        "6E",
        24,
        "punition", -- last time
        "", -- for today
        "eval1", -- next_time
        "", --punition
        "", -- remarque
        "", -- creneau retenue
        "14h55", -- horaire
        "finir de recopier le cours act1 + act2 + cours" -- prgramme_du_jour
    ),
    _6G = Seance:new(
        "6G",
        22,
        "corrigé act1 + copié cours + distrib act2", -- last time
        "", -- for today
        "eval 1", -- next_time
        "", --punition
        "", -- remarque
        "", -- creneau retenue
        "9h15", -- horaire
        "act2 + cours" -- prgramme_du_jour
    ),
    _6H = Seance:new(
        "6H",
        24,
        "act1 corrigé", -- last time
        "", -- for today
        "", -- next_time
        "", --punition
        "", -- remarque
        "", -- creneau retenue
        "12h25", -- horaire
        "finir de recopier le cours + act2" -- prgramme_du_jour
    ),
    _5C = Seance:new(
        "5C",
        24,
        "eval1 + act3Q7", -- last time
        "ex1 et 2 + eval2", -- for today
        "", -- next_time
        "", --punition
        "", -- remarque
        "sA :Lun15-17h -- sB Lun16h Mer8h", -- creneau retenue
        "11h25", -- horaire
        "eval3 + correction ex1et2et3 + act4" -- prgramme_du_jour
    ),
    _5D = Seance:new(
        "5D",
        24,
        "eval2 + ex1 et 2 corrigé + act3Q7", -- last time
        "", -- for today
        "ex3 + eval 3", -- next_time
        "", --punition
        "", -- remarque
        "sA Ven15h sB Mer8-10h", -- creneau retenue
        "14h55", -- horaire
        "act3 + cours" -- prgramme_du_jour
    ),
    _5F = Seance:new(
        "5F",
        24,
        "act2 ok + act3Q6", -- last time
        "copier cours act2 + réviser + ex 2", -- for today
        "eval3 ex3", -- next_time
        "Aïsse Nawel Fanta", --punition
        "", -- remarque
        "sA Jeu -- sB Vscol Jeu8h", -- creneau retenue
        "10h15", -- horaire
        "eval 2 + act3Q7~fin + cours" -- prgramme_du_jour
    ),
    _5G = Seance:new(
        "5G",
        22,
        "act2 + cours~", -- last time
        "eval2 + copier cours", -- for today
        "", -- next_time
        "", --punition
        "", -- remarque
        "Lun8h(vdc) Ven16h", -- creneau retenue
        "12h25", -- horaire
        "eval2 + act3" -- prgramme_du_jour
    ),
    _5H = Seance:new(
        "5H",
        22,
        "act3", -- last time
        "recopier cours + eval3 + exo3", -- for today
        "eval3 + ex3 + cours", -- next_time
        "", --punition
        "", -- remarque
        "sA Mar16h --sA et sB Ven14h", -- creneau retenue
        "10h15", -- horaire
        "eval2 + ex2 + act3 + cours" -- prgramme_du_jour
    )
}