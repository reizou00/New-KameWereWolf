
#> 設定値がどうなっているかを検知、そして最適な物を出す。
    # 変更前のnowが1,変更後のnowが2だった場合
    function kame_werewolf:bin/macro/setting/command/now \
    {\
    Before_now:1,\
    After_now:2,\
    text:"二"\
    }
    # 変更前のnowが2,変更後のnowが1だった場合
    function kame_werewolf:bin/macro/setting/command/now \
    {\
    Before_now:2,\
    After_now:1,\
    text:"一"\
    }