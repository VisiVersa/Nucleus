item modify entity @s[gamemode=!creative] weapon.mainhand nucleus:reduce_count/1
$execute if predicate nucleus:entity/full_inventory if data entity @s SelectedItem run loot spawn ~ ~ ~ loot $(loot_table)
$execute unless predicate nucleus:entity/full_inventory if data entity @s SelectedItem run loot give @s loot $(loot_table)
$execute unless data entity @s SelectedItem run loot replace entity @s weapon.mainhand loot $(loot_table)
