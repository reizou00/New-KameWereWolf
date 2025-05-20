
#> 手に持ってる系

    # 右手
    data modify storage reizo_sid:item Hand.Main set from entity @s SelectedItem.components."minecraft:custom_data".IID

    # 左手
    data modify storage reizo_sid:item Hand.Off set from entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".IID

    # どっちも同じにしたいやつはこう。
    data modify storage reizo_sid:item Hand.Both set from storage reizo_sid:item Hand.Main
    data modify storage reizo_sid:item Hand.Both set from storage reizo_sid:item Hand.Off


#> 装備してる系

    # 頭
    data modify storage reizo_sid:item Armor.Head set from entity @s Inventory[{Slot:103b}].components."minecraft:custom_data".IID

    # 胴体
    data modify storage reizo_sid:item Armor.Chest set from entity @s Inventory[{Slot:102b}].components."minecraft:custom_data".IID

    # 脚
    data modify storage reizo_sid:item Armor.Legs set from entity @s Inventory[{Slot:101}].components."minecraft:custom_data".IID

    # 足
    data modify storage reizo_sid:item Armor.Feet set from entity @s Inventory[{Slot:100}].components."minecraft:custom_data".IID