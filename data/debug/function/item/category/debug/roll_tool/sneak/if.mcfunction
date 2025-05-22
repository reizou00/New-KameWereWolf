
# ジャンプしたなら...Rolled消しましょう。
execute \
at @s[tag=KameServer_WereWolf.Rolled] \
if predicate debug:detection/jump run \
function debug:roll/reset/this