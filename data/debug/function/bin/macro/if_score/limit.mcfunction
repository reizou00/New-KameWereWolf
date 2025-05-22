
# 設定回数の回数分ロールをぶん回せ！
$execute \
if score $limit reizoDebug.Roll matches ..$(now) run \
function debug:bin/command/roll/command_test_dummy/roll/roll