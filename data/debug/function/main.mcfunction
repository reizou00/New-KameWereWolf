
# もし、ゲームがstartしていたなら、何回やるかをset!
execute \
if data storage kameserever_werewolf:debug {Start:true} run \
function debug:bin/macro/if_score/limit with storage kameserever_werewolf:macros



# プレイヤーの動作。
execute as @a at @s run function debug:player/main

# エンティティの動作。
execute as @e at @s run function debug:entity/main