
# Tagの付与
tag @s add KameServer_WereWolf.Job_WereWolf

# まだset_upされていないときにOnlyonceを1にセット、これがset_upにつながるため数を変えてはいけない。
execute \
unless score @s KameSrever_WereWolf.Roll_Onlyonce_WereWolf matches 2 run \
scoreboard players set @s KameSrever_WereWolf.Roll_Onlyonce_WereWolf 1