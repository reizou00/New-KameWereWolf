
# クールタイム用のスコア上げていこう
scoreboard players add @s KameSrever_WereWolf.CoolTime 1

# クールタイム持続中
execute \
if score @s KameSrever_WereWolf.CoolTime matches 1..399 run \
function kame_werewolf:player/job/werewolf/used/no_attack

# クールタイム終了
execute \
if score @s KameSrever_WereWolf.CoolTime matches 400.. run \
function kame_werewolf:player/job/werewolf/used/final