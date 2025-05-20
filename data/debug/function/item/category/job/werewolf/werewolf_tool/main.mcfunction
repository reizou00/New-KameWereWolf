
# しゃがんでるか検知
execute \
if predicate debug:detection/sneak run \
function debug:item/category/job/werewolf/werewolf_tool/if_sneak

# 人狼カテゴリーなので人狼ロールを付与します。
tag @s add KameServer_WereWolf.Job_WereWolf