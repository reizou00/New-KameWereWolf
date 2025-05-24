
# 地面についてるならクールタイム発生。
execute \
if predicate debug:detection/is_on_ground run \
tag @s add KameServer_WereWolf.Job_WereWolf_Used

# シフトとジャンプなら解除っす
execute \
if predicate debug:detection/jump run \
function kame_werewolf:item/job/werewolf/werewolf_tool/used/final