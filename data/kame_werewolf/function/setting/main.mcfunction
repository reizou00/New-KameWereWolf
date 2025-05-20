
#> 設定適用
    # 人狼一人
    execute \
    if data storage kameserever_werewolf:setting \
    {\
    setting:\
        {\
        number_of_werewolf:1\
        }\
    } run \
    function kame_werewolf:setting/now/1/main
    # 人狼二人
    execute \
    if data storage kameserever_werewolf:setting \
    {\
    setting:\
        {\
        number_of_werewolf:2\
        }\
    } run \
    function kame_werewolf:setting/now/2/main