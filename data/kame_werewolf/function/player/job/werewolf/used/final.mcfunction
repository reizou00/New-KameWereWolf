
# 今どれくらいかな
execute \
if score @s KameSrever_WereWolf.CoolTime matches 400 run \
function kame_werewolf:bin/macro/score_title {name:"@s",obj:"CoolTime"}

# クールタイムを0に
scoreboard players set @s KameSrever_WereWolf.CoolTime 0

# Tagも剥奪
tag @s remove KameServer_WereWolf.Job_WereWolf_Used

# アイテムを元に戻す
execute \
if data storage reizo_sid:item {Hand:{Both:"WereWolf_Tool"}} run \
item modify entity @s weapon \
{\
function:"set_components",\
"components":\
    {\
    "item_model":"iron_sword",\
    "custom_name":\
        '{\
        "text": "人ぶっ殺しソード",\
        "bold": true\
        }',\
    "lore":\
    [\
        '{\
        "text": "[市民側を倒せる。]",\
        "color":"green"\
        }'\
    ],\
    "attribute_modifiers":\
        [\
            {\
            type:"attack_damage",\
            id:"minecraft:werewolf_tool",\
            amount:10,\
            operation:"add_value"\
            }\
        ]\
    }\
}
