execute if block ^ ^ ^0.01 minecraft:barrel[open=true] positioned ^ ^ ^0.01 align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=minecraft:marker,tag=smithed.block,distance=0.5] positioned ~ ~1 ~ unless entity @e[type=minecraft:item_display,tag=nucleus.offset_block_entity,distance=..0.5] positioned ~ ~-1 ~ run return run function nucleus:block/barrel/marker/create

scoreboard players remove #raycast nucleus.dummy 1
execute if score #raycast nucleus.dummy matches 1.. positioned ^ ^ ^0.01 run function nucleus:block/barrel/raycast
