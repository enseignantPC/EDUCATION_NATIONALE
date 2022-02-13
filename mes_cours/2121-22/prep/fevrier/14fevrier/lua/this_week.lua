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
        "eval 1 + act3 + chapitre 3" -- prgramme_du_jour
    ),
    _6B = Seance:new(
        "6B",
        23,
        "act2 + cours +act3 Q1", -- last time
        "act3 Q2", -- for today
        "", -- next_time
        "", --punition
        "", -- remarque
        "", -- creneau retenue
        "11h25", -- horaire
        "correct act3 Q2 +cours + c'est pas sorcier? " -- prgramme_du_jour
    ),
    _6D = Seance:new(
        "6D",
        24,
        "act2 + cours + act3Q1", -- last time
        "", -- for today
        "", -- next_time
        "", --punition
        "", -- remarque
        "", -- creneau retenue
        "14h55", -- horaire
        "act3 + cours + c'est pas sorcier" -- prgramme_du_jour
    ),
    _6E = Seance:new(
        "6E",
        24,
        "act2 + cours", -- last time
        "", -- for today
        "", -- next_time
        "", --punition
        "", -- remarque
        "", -- creneau retenue
        "14h55", -- horaire
        "act2 finir le cours + act3 + cours + c'est pas sorcier" -- prgramme_du_jour
    ),
    _6G = Seance:new(
        "6G",
        22,
        "eval1 + cours ? + act3 (vidéo vu) ", -- last time
        "", -- for today
        "", -- next_time
        "", --punition
        "", -- remarque
        "", -- creneau retenue
        "9h15", -- horaire
        "act3 Q1~ + cours + c'est pas sorcier? + chapitre 3 act1 " -- programme_du_jour
    ),
    _6H = Seance:new(
        "6H",
        24,
        "cmoportement! + act2 + cours act2-3", -- last time
        "", -- for today
        "", -- next_time
        "", --punition
        "", -- remarque
        "", -- creneau retenue
        "12h25", -- horaire
        "act3 + c'est pas sorcier" -- prgramme_du_jour
    ),
    _5C = Seance:new(
        "5C",
        24,
        "evaluation", -- last time
        "", -- for today
        "", -- next_time
        "", --punition
        "", -- remarque
        "sA :Lun15-17h -- sB Lun16h Mer8h", -- creneau retenue
        "11h25", -- horaire
        "tache complexe?" -- prgramme_du_jour
    ),
    _5D = Seance:new(
        "5D",
        24,
        "", -- last time
        "", -- for today
        "", -- next_time
        "", --punition
        "", -- remarque
        "sA Ven15h sB Mer8-10h", -- creneau retenue
        "14h55", -- horaire
        "evaluation " -- prgramme_du_jour
    ),
    _5F = Seance:new(
        "5F",
        24,
        "exercices + act4 (maison)", -- last time
        "", -- for today
        "", -- next_time
        "", --punition
        ",", -- remarque
        "sA Jeu -- sB Vscol Jeu8h", -- creneau retenue
        "10h15", -- horaire
        "Évaluation" -- prgramme_du_jour
    ),
    _5G = Seance:new(
        "5G",
        22,
        "exercices + act4 (maison)", -- last time
        "", -- for today
        "", -- next_time
        "", --punition
        "", -- remarque
        "Lun8h(vdc) Ven16h", -- creneau retenue
        "12h25", -- horaire
        "évaluation" -- prgramme_du_jour
    ),
    _5H = Seance:new(
        "5H",
        22,
        "eval + tatche complexe part 1", -- last time
        "", -- for today
        "", -- next_time
        "", --punition
        "", -- remarque
        "sA Mar16h --sA et sB Ven14h", -- creneau retenue
        "10h15", -- horaire
        "15' tache complexe + c'est pas sorcier" -- prgramme_du_jour
    )
}
