
# 今どれくらいかな
execute \
if score @s KameSrever_WereWolf.CoolTime matches 400 run \
function kame_werewolf:bin/macro/score_title {name:"@s",obj:"CoolTime"}

# クールタイムを0に
scoreboard players set @s KameSrever_WereWolf.CoolTime 0

# Tagも剥奪
tag @s remove KameServer_WereWolf.Job_WereWolf_Used

# アイテムを元に戻す
function kame_werewolf:bin/macro/item/werewolf_tool \
{\
model:"iron_sword",\
name:"人ぶっ殺しソード",\
name_color:white,\
lore:"[市民側を倒せる。]",\
lore_color:green,\
damage:10\
}
