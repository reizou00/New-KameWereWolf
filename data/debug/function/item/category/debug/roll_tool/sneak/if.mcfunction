
# 地面についてるなら自分対象っすわ
execute \
if predicate debug:detection/is_on_ground run \
tag @s add reizoDebugTag.Approve_Roll

# ジャンプしたなら...Rolled消しましょう。
execute \
at @s[tag=KameServer_WereWolf.Rolled] \
if predicate debug:detection/jump run \
function debug:roll/reset/this