# tnj-stealshoes

### qb-radialmenu:
```lua
{
    id = 'stealshoe',
    title = 'Steal Shoes',
    icon = 'shoe-prints',
    type = 'client',
    event = 'tnj-stealshoes:client:TheftShoe',
    shouldClose = true
}
```

### qb-core/shared/items.lua
```lua
['weapon_shoe'] 		     = {['name'] = 'weapon_shoe', 		 	  	['label'] = 'Shoe', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_shoe.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A shoe'},
```

### qb-core/shared/weapons.lua
```lua
[`weapon_shoe`] 	 = {['name'] = 'weapon_shoe', 		['label'] = 'Shoe', 		['ammotype'] = nil,				['damagereason'] = 'Died'},
```
### Inventory Image:
![weapon_shoe](https://user-images.githubusercontent.com/80186604/161427130-12f5b920-516c-45a2-a6f9-c23fd19ec2b6.png)
