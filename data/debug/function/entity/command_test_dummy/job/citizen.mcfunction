
#> Tag外し
    tag @s remove KameServer_WereWolf.Job_WereWolf
#> Tag付け
    tag @s add KameServer_WereWolf.Job_Citizen
    tag @s add KameServer_WereWolf.Rolled

# 名前つけ。
data merge entity @s {CustomName:'{"text": "■","color": "green"}',CustomNameVisible:true}

# オオカミの本能によって獲物にゆっくり近づくというものが残っているため市民の近くでは遅くなる！
# という設定。
tag @a[tag=KameServer_WereWolf.Job_WereWolf,distance=..7] add KameServer_WereWolf.Job_WereWolf_slow

# 離れているなら大丈夫。
tag @a[tag=KameServer_WereWolf.Job_WereWolf,distance=7..] remove KameServer_WereWolf.Job_WereWolf_slow