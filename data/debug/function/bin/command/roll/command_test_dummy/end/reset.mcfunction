
#> Test君たちについているアイテムをairに...
    # 人狼
    execute \
    at @s[tag=KameServer_WereWolf.Job_WereWolf] run \
    item replace entity @s armor.chest with air
    # 市民
    execute \
    at @s[tag=KameServer_WereWolf.Job_Citizen] run \
    item replace entity @s armor.chest with air

# もう名前を見る必要がない。消せ！
execute at @s[tag=KameServer_WereWolf.WereWolfGame_Player] run \
data merge entity @s {CustomNameVisible:false}

# リセットだ！
function kame_werewolf:system/end/reset
# limitスコアをリセット！
scoreboard players set $limit reizoDebug.Roll 0
# dataリセット
data merge storage kameserever_werewolf:debug {Start:false}