
# 終わったので市民じゃないものはTag付け
$execute \
if score $limit KameServer_WereWolf.Roll matches $(now).. run \
tag @a\
[\
tag=!KameServer_WereWolf.Job_WereWolf,\
tag=KameServer_WereWolf.WereWolfGame_Player,\
tag=KameServer_WereWolf.Rolled\
] add \
KameServer_WereWolf.Job_Citizen