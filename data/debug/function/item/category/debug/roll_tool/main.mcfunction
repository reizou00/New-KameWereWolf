
# しゃがんでいるなら...
execute \
if predicate debug:detection/sneak run \
function debug:item/category/debug/roll_tool/sneak/if

# 使ったな！
execute \
at @s[scores={reizo_itemused.using=1}] run \
function debug:item/category/debug/roll_tool/using
