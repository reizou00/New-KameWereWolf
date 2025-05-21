
#> Test君たちについているアイテムをairに...
    # 人狼
    execute \
    at @s[tag=KameServer_WereWolf.Job_WereWolf] run \
    item replace entity @s armor.chest with air
    # 市民
    execute \
    at @s[tag=KameServer_WereWolf.Job_Citizen] run \
    item replace entity @s armor.chest with air

# リセットだ！
function kame_werewolf:system/end/reset