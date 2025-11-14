# Map 0: Silent Manor
# Builders:
#   Renvle
#   StarCity__
data modify storage blockhunt_plus:maps maps insert 0 value { \
    id: 0, \
    name: "静谧庄园", \
    color: "#88D9EB", \
    world_time: 0, \
    weather: "CLEAR", \
    hider_spawn: [-114462, 63, 108, 90, 0], \
    seeker_spawn: [-114478, 65, 54, -45, 0], \
    from: [-114511, 49], \
    to: [-114412, 148], \
    disguise_blocks: [ \
        { \
            id: "minecraft:hay_block", \
            states: [ \
                { \
                   name: "axis", \
                   value: ["x", "y", "z"] \ 
                } \
            ] \
        }, \
        { \
            id: "minecraft:spruce_log", \
            states: [ \
                { \
                   name: "axis", \
                   value: ["x", "y", "z"] \ 
                } \
            ] \
        }, \
        { \
            id: "minecraft:bamboo_block", \
            states: [ \
                { \
                   name: "axis", \
                   value: ["x", "y", "z"] \ 
                } \
            ] \
        }, \
        { \
            id: "minecraft:amethyst_block", \
            states: [] \
        }, \
        { \
            id: "minecraft:redstone_block", \
            states: [] \
        }, \
        { \
            id: "minecraft:oak_log", \
            states: [ \
                { \
                   name: "axis", \
                   value: ["x", "y", "z"] \ 
                } \
            ] \
        }, \
        { \
            id: "minecraft:obsidian", \
            states: [] \
        }, \
        { \
            id: "minecraft:tnt", \
            states: [] \
        }, \
        { \
            id: "minecraft:sponge", \
            states: [] \
        }, \
        { \
            id: "minecraft:lantern", \
            states: [ \
                { \
                    name: "hanging", \
                    value: [false] \
                } \
            ] \
        }, \
        { \
            id: "minecraft:soul_lantern", \
            states: [ \
                { \
                    name: "hanging", \
                    value: [false] \
                } \
            ] \
        }, \
        { \
            id: "minecraft:cobweb", \
            states: [] \
        }, \
        { \
            id: "minecraft:jukebox", \
            states: [] \
        }, \
        { \
            id: "minecraft:note_block", \
            states: [] \
        }, \
        { \
            id: "minecraft:creeper_head", \
            states: [ \
                { \
                    name: "rotation", \
                    value: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15] \
                } \
            ] \
        }, \
        { \
            id: "minecraft:piglin_head", \
            states: [ \
                { \
                    name: "rotation", \
                    value: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15] \
                } \
            ] \
        }, \
        { \
            id: "minecraft:crying_obsidian", \
            states: [] \
        }, \
        { \
            id: "minecraft:end_portal_frame", \
            states: [ \
                { \
                    name: "eye", \
                    value: [true, false] \
                }, \
                { \
                    name: "facing", \
                    value: ["north", "south", "west", "east"] \
                } \
            ] \
        }, \
        { \
            id: "minecraft:anvil", \
            states: [ \
                { \
                    name: "facing", \
                    value: ["north", "south", "west", "east"] \
                } \
            ] \
        }, \
        { \
            id: "minecraft:bookshelf", \
            states: [] \
        }, \
        { \
            id: "minecraft:smithing_table", \
            states: [] \
        }, \
        { \
            id: "minecraft:loom", \
            states: [ \
                { \
                    name: "facing", \
                    value: ["north", "south", "west", "east"] \
                } \
            ] \
        }, \
        { \
            id: "minecraft:furnace", \
            states: [ \
                { \
                    name: "facing", \
                    value: ["north", "south", "west", "east"] \
                } \
            ] \
        }, \
        { \
            id: "minecraft:smoker", \
            states: [ \
                { \
                    name: "facing", \
                    value: ["north", "south", "west", "east"] \
                } \
            ] \
        }, \
        { \
            id: "minecraft:stonecutter", \
            states: [ \
                { \
                    name: "facing", \
                    value: ["north", "south", "west", "east"] \
                } \
            ] \
        }, \
        { \
            id: "minecraft:blast_furnace", \
            states: [ \
                { \
                    name: "facing", \
                    value: ["north", "south", "west", "east"] \
                } \
            ] \
        }, \
        { \
            id: "minecraft:fletching_table", \
            states: [] \
        }, \
        { \
            id: "minecraft:cartography_table", \
            states: [] \
        }, \
        { \
            id: "minecraft:gold_block", \
            states: [] \
        }, \
        { \
            id: "minecraft:crafting_table", \
            states: [] \
        }, \
        { \
            id: "minecraft:cauldron", \
            states: [] \
        }, \
        { \
            id: "minecraft:barrel", \
            states: [ \
                { \
                    name: "facing", \
                    value: ["north", "south", "west", "east"] \
                } \
            ] \
        }, \
        { \
            id: "minecraft:composter", \
            states: [] \
        }, \
        { \
            id: "minecraft:chiseled_bookshelf", \
            states: [ \
                { \
                    name: "facing", \
                    value: ["north", "south", "west", "east"] \
                } \
            ] \
        }, \
        { \
            id: "minecraft:netherite_block", \
            states: [] \
        }, \
        { \
            id: "minecraft:diamond_block", \
            states: [] \
        }, \
        { \
            id: "minecraft:emerald_block", \
            states: [] \
        }, \
        { \
            id: "minecraft:magma_block", \
            states: [] \
        }, \
        { \
            id: "minecraft:beacon", \
            states: [] \
        }, \
        { \
            id: "minecraft:white_glazed_terracotta", \
            states: [ \
                { \
                    name: "facing", \
                    value: ["north", "south", "west", "east"] \
                } \
            ] \
        }, \
        { \
            id: "minecraft:flower_pot", \
            states: [] \
        }, \
        { \
            id: "minecraft:cherry_planks", \
            states: [] \
        }, \
        { \
            id: "minecraft:redstone_lamp", \
            states: [] \
        }, \
        { \
            id: "minecraft:carved_pumpkin", \
            states: [ \
                { \
                    name: "facing", \
                    value: ["north", "south", "west", "east"] \
                } \
            ] \
        }, \
        { \
            id: "minecraft:raw_gold_block", \
            states: [] \
        }, \
        { \
            id: "minecraft:honeycomb_block", \
            states: [] \
        }, \
        { \
            id: "minecraft:honey_block", \
            states: [] \
        }, \
        { \
            id: "minecraft:slime_block", \
            states: [] \
        }, \
        { \
            id: "minecraft:pumpkin", \
            states: [] \
        }, \
        { \
            id: "minecraft:melon", \
            states: [] \
        }, \
        { \
            id: "minecraft:oxeye_daisy", \
            states: [] \
        }, \
        { \
            id: "minecraft:dandelion", \
            states: [] \
        }, \
        { \
            id: "minecraft:cornflower", \
            states: [] \
        }, \
        { \
            id: "minecraft:poppy", \
            states: [] \
        }, \
        { \
            id: "minecraft:lily_of_the_valley", \
            states: [] \
        }, \
        { \
            id: "minecraft:azure_bluet", \
            states: [] \
        }, \
        { \
            id: "minecraft:firefly_bush", \
            states: [] \
        }, \
        { \
            id: "minecraft:torch", \
            states: [] \
        }, \
        { \
            id: "minecraft:soul_torch", \
            states: [] \
        }, \
        { \
            id: "minecraft:copper_torch", \
            states: [] \
        }, \
        { \
            id: "minecraft:redstone_torch", \
            states: [] \
        } \
    ] \
}