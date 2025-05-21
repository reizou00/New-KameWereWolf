
#
$execute \
if data storage reizo_sid:item {Hand:{Both:"WereWolf_Tool"}} run \
item modify entity @s weapon \
{\
function:"set_components",\
"components":\
    {\
    "item_model":"$(model)",\
    "custom_name":\
        '{\
        "text": "$(name)",\
        "color":"$(name_color)",\
        "bold": true\
        }',\
    "lore":\
    [\
        '{\
        "text": "[$(lore)]",\
        "color":"$(lore_color)"\
        }'\
    ],\
    "attribute_modifiers":\
        [\
            {\
            type:"attack_damage",\
            id:"minecraft:werewolf_tool",\
            amount:$(damage),\
            operation:"add_value"\
            }\
        ]\
    }\
}
