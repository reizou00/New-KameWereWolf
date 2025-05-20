
# 使って時はスコアを上げるもの
scoreboard players add @s reizo_itemused.using 1

# 使用中だぞ！
scoreboard players set @s reizo_itemused.usend 1

# 進捗剥奪！これがないと大変じゃ。
advancement revoke @s only reizo_itemused:using_item