
#> お前...役職持ちだよな...じゃあゲームプレイしてるんだよな...
    # 人狼
    execute \
    at @s[tag=KameServer_WereWolf.Job_WereWolf] run \
    tag @s add KameServer_WereWolf.WereWolfGame_Player
    # 市民
    execute \
    at @s[tag=KameServer_WereWolf.Job_Citizen] run \
    tag @s add KameServer_WereWolf.WereWolfGame_Player

#> アイテム検知
    # 人狼カテゴリー
        # それは...人ぶっ殺しソードだな！
            # 持ってる
            execute \
            if data storage reizo_sid:item \
            {\
            Hand:\
                {\
                Both:"WereWolf_Tool"\
                }\
            } run \
            function debug:item/category/job/werewolf/werewolf_tool/main
