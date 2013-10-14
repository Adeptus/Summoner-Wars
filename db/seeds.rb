puts 'Cave Goblin Rase'

Unit.find_or_create_by!(name: "Fighter",
                        life: 1,
                        power: 1,
                        summon_cost: 0,
                        unit_type: "Common",
                        wepon_type: "sord",
                        count_in_deck: 8,
                        rase_type: "Cave Goblins" )
puts 'Cave Goblin Fighter created'

Unit.find_or_create_by!(name: "Slinger",
                        life: 1,
                        power: 1,
                        summon_cost: 0,
                        unit_type: "Common",
                        wepon_type: "bow",
                        count_in_deck: 6,
                        rase_type: "Cave Goblins" )
puts 'Cave Goblin Slinger created'

Unit.find_or_create_by!(name: "Berserker",
                        life: 2,
                        power: 2,
                        summon_cost: 2,
                        unit_type: "Common",
                        wepon_type: "sord",
                        count_in_deck: 4,
                        rase_type: "Cave Goblins" )
puts 'Cave Goblin Berserker created'