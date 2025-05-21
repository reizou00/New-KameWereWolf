
#> Test君たちについているアイテムをairに...
    # 人狼
    execute \
    as @e[tag=KameServer_WereWolf.Job_WereWolf,tag=Test] at @s run \
    item replace entity @s armor.chest with air
    # 市民
    execute \
    as @e[tag=KameServer_WereWolf.Job_Citizen,tag=Test] at @s run \
    item replace entity @s armor.chest with air

# Test君基準にリセットしちまいな！
execute as @e[tag=Test] at @s run function kame_werewolf:system/end/reset
