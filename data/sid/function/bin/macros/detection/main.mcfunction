
# どこの、どの部位に、なんのアイテムを持ってる？
$execute \
if data storage reizo_sid:item {$(BodyType):{$(BodyName):"$(IID)"}} run \
$(func)