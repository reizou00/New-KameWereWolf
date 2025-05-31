
#> 設定適用
# settingの値では人狼の人数と同じだが、この場では-1させてもらう。
# 理由は、..$(now)がロールの起動条件なので規定通りの数字だと一つオーバーしてしまうためだ。
    # 人狼一人
    execute \
    if data storage kameserever_werewolf:setting \
    {\
    setting:\
        {\
        number_of_werewolf:1\
        }\
    } run \
    data merge storage kameserever_werewolf:macros {now:0}
    # 人狼二人
    execute \
    if data storage kameserever_werewolf:setting \
    {\
    setting:\
        {\
        number_of_werewolf:2\
        }\
    } run \
    data merge storage kameserever_werewolf:macros {now:1}