schedule function #nucleus:scheduled/technical/ten_second_clock 10s replace

execute as @e[type=#nucleus:scheduled/ten_second_clock,tag=nucleus.entity] at @s run function nucleus:technical/ten_second_clock/as_entity
execute as @a at @s run function #nucleus:scheduled/player/ten_second_clock

# Timestop
execute unless score #nucleus.timestop nucleus.dummy matches 1 unless entity @a[gamemode=!spectator,nbt=!{Health:0f}] run function nucleus:technical/timestop/stop
execute if score #nucleus.timestop nucleus.dummy matches 1 if entity @a[gamemode=!spectator,nbt=!{Health:0f}] run function nucleus:technical/timestop/go
