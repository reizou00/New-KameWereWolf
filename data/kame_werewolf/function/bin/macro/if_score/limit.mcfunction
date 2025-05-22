
# 設定回数の回数分ロールをぶん回せ！
$execute \
as @a at @s \
if score $limit KameSrever_WereWolf.Roll matches ..$(now) run \
function kame_werewolf:system/start/job_roll/roll