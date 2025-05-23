
# 右クリックでロールだ！
execute \
if data storage kameserever_werewolf:debug \
{\
Tool:\
    {\
    Debug:\
        {\
        Roll_Toll:\
            {\
            Onlyonce:false\
            }\
        }\
    }\
} run \
function kame_werewolf:system/start/job_roll/main

# もう一回起動させないためにtrueに。
data merge storage kameserever_werewolf:debug \
{\
Tool:\
    {\
    Debug:\
        {\
        Roll_Toll:\
            {\
            Onlyonce:true\
            }\
        }\
    }\
}