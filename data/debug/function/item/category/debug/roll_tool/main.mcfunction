
# しゃがんでいるなら...
execute \
if predicate debug:detection/sneak run \
function debug:item/category/debug/roll_tool/sneak/if

# 使ったな！
execute \
at @s[scores={reizo_itemused.using=1..}] run \
function debug:item/category/debug/roll_tool/using

# 使ってないな！ならOnlyonceをfalseにするぜ！
execute \
at @s[scores={reizo_itemused.using=0}] run \
data merge storage kameserever_werewolf:debug \
{\
Tool:\
    {\
    Debug:\
        {\
        Roll_Toll:\
            {\
            Onlyonce:false\
            }\
        }\
    }\
}