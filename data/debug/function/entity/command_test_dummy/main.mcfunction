
#> ジョブごとの動作
    # 人狼
    execute \
    at @s[tag=KameServer_WereWolf.Job_WereWolf] run \
    function debug:entity/command_test_dummy/job/werewolf
    # 市民
    execute \
    at @s[tag=KameServer_WereWolf.Job_Citizen] run \
    function debug:entity/command_test_dummy/job/citizen

#> 役職の人数を計算
    # 人狼
    execute \
    store result score $WereWolf reizoDebug.Roll \
    if entity @e[tag=KameServer_WereWolf.Job_WereWolf,type=armor_stand,tag=Test]
    # 市民
    execute \
    store result score $Citizen reizoDebug.Roll \
    if entity @e[tag=KameServer_WereWolf.Job_Citizen,type=armor_stand,tag=Test]

#> トータルプレイヤーの人数を計算
execute \
store result score $TotalPlayer reizoDebug.Roll \
if entity @e[tag=KameServer_WereWolf.WereWolfGame_Player,type=armor_stand,tag=Test]

# すでにロールしているTest君対象。
execute at @s[tag=KameServer_WereWolf.Rolled] run function debug:entity/command_test_dummy/rolled/main