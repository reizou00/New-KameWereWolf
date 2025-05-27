
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
