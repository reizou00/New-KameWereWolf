
# 今どれくらいかな
function kame_werewolf:bin/macro/score_title {name:"@s",obj:"CoolTime"}

# アイテムの入れ替え
function kame_werewolf:bin/macro/item/werewolf_tool \
{\
model:"stone_sword",\
name:"クールタイム中...",\
name_color:red,\
lore:"[400になるまで攻撃が出来ない。]",\
lore_color:red,\
damage:-9999\
}