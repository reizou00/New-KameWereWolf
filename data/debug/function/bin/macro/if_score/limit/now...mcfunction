
# 終わったので市民じゃないものはTag付け
$execute \
if score $limit reizoDebug.Roll matches $(now).. run \
tag @e\
[\
tag=Test,\
tag=!KameServer_WereWolf.Job_WereWolf,\
tag=KameServer_WereWolf.WereWolfGame_Player,\
type=armor_stand\
] add \
KameServer_WereWolf.Job_Citizen