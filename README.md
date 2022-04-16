# tnj-stealshoes

*the model is standalone this just has the steal shoes in qbcore*

## LICENSE
This project does not contain a license, therefore you are not allowed to add one and claim it as yours. You are not allowed to sell this nor re-distribute it, if an issue arises, we will proceed to file a DMCA takedown request. You are not allowed to change/add a license unless given permission by T&J Services (Jay). If you want to modify _(does not apply if you want to use it for personal purposes)_ or make an agreement, you can contact T&J Services (Jay). Pull requests are accepted as long as they do not contain breaking changes. You can read more about unlicensed repositories [here](https://opensource.stackexchange.com/questions/1720/what-can-i-assume-if-a-publicly-published-project-has-no-license) if questions remain.

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
