
#> 役職を分かりやすいようにロールを付ける
    # 人狼ならネザライトの胸当て。
    execute \
    at @s[tag=KameServer_WereWolf.Job_WereWolf] run \
    item replace entity @s armor.chest with netherite_chestplate
    # 市民なら皮の胸当て。
    execute \
    at @s[tag=KameServer_WereWolf.Job_Citizen] run \
    item replace entity @s armor.chest with leather_chestplate
    # どっちも持ってないなら何もなし。
    execute \
    at @s[tag=!KameServer_WereWolf.Job_Citizen,tag=!KameServer_WereWolf.Job_WereWolf] run \
    item replace entity @s armor.chest with air