
#> デバッガーは前役職を持っている。
    # 人狼
    
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




    # debugカテゴリー
        # お前は、デバッグ用のアイテムの...ロールツールだな。
            # 持ってる
            execute \
            if data storage reizo_sid:item \
            {\
            Hand:\
                {\
                Both:"Debug.Rooll_Tool"\
                }\
            } run \
            function debug:item/category/debug/roll_tool/main
            # 持ってない
            execute \
            unless data storage reizo_sid:item \
            {\
            Hand:\
                {\
                Both:"Debug.Rooll_Tool"\
                }\
            } run \
            tag @a remove reizoDebugTag.Approve_Roll
