
# 最初はみんな0
scoreboard players set @s KameSrever_WereWolf.Roll 0
scoreboard players set @s KameSrever_WereWolf.Roll_Onlyonce_Citizen 0
scoreboard players set @s KameSrever_WereWolf.Roll_Onlyonce_WereWolf 0

# ロールしよう
$execute \
unless score $WereWolf KameSrever_WereWolf.Roll matches $(now) \
store result score @s KameSrever_WereWolf.Roll run \
random value 1..2
