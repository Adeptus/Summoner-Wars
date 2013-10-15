#'Cave Goblin Rase'
Unit.find_or_create_by!(name: "Sneeks",
                        life: 7,
                        power: 3,
                        summon_cost: 0,
                        unit_type: "Summoner",
                        wepon_type: "sord",
                        count_in_deck: 1,
                        rase_type: "Cave Goblins" )
#'Cave Goblin Summoner created'
Unit.find_or_create_by!(name: "Fighter",
                        life: 1,
                        power: 1,
                        summon_cost: 0,
                        unit_type: "Common",
                        wepon_type: "sord",
                        count_in_deck: 8,
                        rase_type: "Cave Goblins" )
#'Cave Goblin Fighter created'
Unit.find_or_create_by!(name: "Slinger",
                        life: 1,
                        power: 1,
                        summon_cost: 0,
                        unit_type: "Common",
                        wepon_type: "bow",
                        count_in_deck: 6,
                        rase_type: "Cave Goblins" )
#'Cave Goblin Slinger created'
Unit.find_or_create_by!(name: "Berserker",
                        life: 2,
                        power: 2,
                        summon_cost: 2,
                        unit_type: "Common",
                        wepon_type: "sord",
                        count_in_deck: 4,
                        rase_type: "Cave Goblins" )
#Cave Goblin Berserker created'
Unit.find_or_create_by!(name: "The Eater",
                        life: 6,
                        power: 3,
                        summon_cost: 4,
                        unit_type: "Champion",
                        wepon_type: "sord",
                        count_in_deck: 1,
                        rase_type: "Cave Goblins" )
#Cave Goblin The Eater created'
Unit.find_or_create_by!(name: "Blarf",
                        life: 5,
                        power: 0,
                        summon_cost: 1,
                        unit_type: "Champion",
                        wepon_type: "sord",
                        count_in_deck: 1,
                        rase_type: "Cave Goblins" )
#Cave Goblin Berserker created'
Unit.find_or_create_by!(name: "Mook",
                        life: 7,
                        power: 2,
                        summon_cost: 5,
                        unit_type: "Champion",
                        wepon_type: "sord",
                        count_in_deck: 1,
                        rase_type: "Cave Goblins" )
#Cave Goblin Berserker created'
Event.find_or_create_by!(name: "Goblin Rage",
                         rase_type: "Cave Goblins",
                         count_in_deck: 3 )
Event.find_or_create_by!(name: "Goblin Horde Attack",
                         rase_type: "Cave Goblins",
                         count_in_deck: 3 )
Event.find_or_create_by!(name: "Goblin Rush",
                         rase_type: "Cave Goblins",
                         count_in_deck: 2 )
Event.find_or_create_by!(name: "Goblin Invincibility",
                         rase_type: "Cave Goblins",
                         count_in_deck: 1 )
Wall.find_or_create_by!(name: "Wall",
                        rase_type: "Cave Goblins",
                        count_in_deck: 3,
                        life: 9 )