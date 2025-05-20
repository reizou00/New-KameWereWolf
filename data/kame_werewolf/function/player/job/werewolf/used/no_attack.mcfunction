
# 今どれくらいかな
function kame_werewolf:bin/macro/score_title {name:"@s",obj:"CoolTime"}

# アイテムの入れ替え
execute \
if data storage reizo_sid:item {Hand:{Both:"WereWolf_Tool"}} run \
item modify entity @s weapon \
{\
function:"set_components",\
"components":\
    {\
    "item_model":"stone_sword",\
    "custom_name":\
    '{\
        "text": "クールタイム中...",\
        "color": "red",\
        "bold": true\
    }',\
    "lore":\
    [\
        '{\
            "text": "[400になるまで攻撃が出来ない。]",\
            "color": "red"\
        }'\
    ],\
    "attribute_modifiers":\
        [\
            {\
            type:"attack_damage",\
            id:"minecraft:werewolf_tool",\
            amount:-9999,operation:"add_value"\
            }\
        ]\
    }\
}