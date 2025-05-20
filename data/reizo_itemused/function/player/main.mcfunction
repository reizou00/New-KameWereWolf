
# 使ってる？使ってない？どっちなんだい！
execute if score @s[scores={reizo_itemused.using=1..}] reizo_itemused.usend matches 0 run function reizo_itemused:relase_using

# クリックを離したな！
scoreboard players set @s reizo_itemused.usend 0