
# 俺はゲームを始めているぞ！
tag @s add KameServer_WereWolf.WereWolfGame_Player

# まだロールしてない人対象
execute \
at @s[tag=!KameServer_WereWolf.Rolled] run \
function kame_werewolf:system/start/job_roll/unless_rolled with storage kameserever_werewolf:macros

# ロール済み、ゲーム終了後に外すこと。
tag @s add KameServer_WereWolf.Rolled

# 人狼じゃない奴は市民だ。
tag @s[tag=!KameServer_WereWolf.Job_WereWolf,tag=KameServer_WereWolf.WereWolfGame_Player,tag=KameServer_WereWolf.Rolled] add KameServer_WereWolf.Job_Citizen