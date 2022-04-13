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

### qb-inventory/client/main.lua add the following into the checks on line 440
```lua
or weaponName == "weapon_shoe"
```

### qb-weapons/client/main.lua add the following around line 163:
```lua
elseif QBCore.Shared.Weapons[weapon]["name"] == "weapon_shoe" then
    TriggerServerEvent('QBCore:Server:RemoveItem', "weapon_shoe", 1)
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

https://discord.gg/GUhYGu999z
