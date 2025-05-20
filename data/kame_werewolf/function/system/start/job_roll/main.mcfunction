
# まだロールしてない人対象
execute \
at @s[tag=!KameServer_WereWolf.Rolled] run \
function kame_werewolf:system/start/job_roll/unless_rolled with storage kameserever_werewolf:macros

# ロール済み、ゲーム終了後に外すこと。
tag @s add KameServer_WereWolf.Rolled

#> 役職の定義
    # 人狼
    execute \
    as @a[scores={KameSrever_WereWolf.Roll=2}] at @s run \
    function kame_werewolf:system/start/job_roll/set_job/werewolf
    # 市民
    execute \
    at @s[scores={KameSrever_WereWolf.Roll=0..1}] run \
    function kame_werewolf:system/start/job_roll/set_job/citizen

#> 役職の人数を計算
    # 人狼
    execute \
    store result score $WereWolf KameSrever_WereWolf.Roll \
    if entity @a[tag=KameServer_WereWolf.Job_WereWolf]
    # 市民
    execute \
    store result score $Citizen KameSrever_WereWolf.Roll \
    if entity @a[tag=KameServer_WereWolf.Job_Citizen]