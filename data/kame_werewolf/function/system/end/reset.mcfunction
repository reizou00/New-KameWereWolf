
#> Tag消去
    tag @s remove KameServer_WereWolf.Job_Citizen
    tag @s remove KameServer_WereWolf.Job_WereWolf
    tag @s remove KameServer_WereWolf.Rolled
    tag @s remove KameServer_WereWolf.WereWolfGame_Player

#> スコアリセット
    scoreboard players reset @s KameSrever_WereWolf.Roll
    scoreboard players reset @s KameSrever_WereWolf.Roll_Onlyonce_Citizen
    scoreboard players reset @s KameSrever_WereWolf.Roll_Onlyonce_WereWolf

#> dataリセット
    data merge storage kameserever_werewolf:system {Start:false}