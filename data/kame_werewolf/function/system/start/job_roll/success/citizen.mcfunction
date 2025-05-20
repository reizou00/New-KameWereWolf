
# まだset_upされていないときにOnlyonceを1にセット、これがset_upにつながるため数を変えてはいけない。
execute \
unless score @s KameSrever_WereWolf.Roll_Onlyonce_Citizen matches 2 run \
scoreboard players set @s KameSrever_WereWolf.Roll_Onlyonce_Citizen 1