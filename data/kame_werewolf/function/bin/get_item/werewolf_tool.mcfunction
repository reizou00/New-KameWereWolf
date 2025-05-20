
# 人ぶっ殺しソードを手に入れるならここ。
give @s iron_sword\
[\
custom_data=\
    {\
    "IID":"WereWolf_Tool"\
    },\
custom_name=\
    '{\
    "text": "人ぶっ殺しソード",\
    "bold": true\
    }',\
lore=\
    [\
        '{\
        "text": "[市民側を倒せる。]",\
        "color":"green"\
        }'\
    ],\
attribute_modifiers=\
        [\
            {\
            type:"attack_damage",\
            id:"minecraft:werewolf_tool",\
            amount:10,\
            operation:"add_value"\
            }\
        ]\
]