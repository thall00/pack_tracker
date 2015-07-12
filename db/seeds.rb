# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' },, { name: 'Copenhagen' },])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Expedition.create([
  { title:"Multi-Pitch Sport Climb", days:3 },
  { title:"Rainforest Backpacking", days:6 }
  ])

climbers = Climber.create([
  { name:"Jimbo", expeditions: Expedition.where(id: [1, 2]) },
  { name:"Limbo", expeditions: Expedition.where(id: 1) },
  { name:"Dimbo", expeditions: Expedition.where(id: 1) }
  ])

inventory_items = InventoryItem.create([
  { title:"Locking Carabiner", description:"", weight:50, climber_id: 1 },
  { title:"Locking Carabiner", description:"", weight:50, climber_id: 1 },
  { title:"Locking Carabiner", description:"", weight:50, climber_id: 1 },
  { title:"Non-Locking Carabiner", description:"", weight:40, climber_id: 1 },
  { title:"Non-Locking Carabiner", description:"", weight:40, climber_id: 1 },
  { title:"Non-Locking Carabiner", description:"", weight:40, climber_id: 1 },
  { title:"Non-Locking Carabiner", description:"", weight:40, climber_id: 1 },
  { title:"Headlamp", description:"Derek's Petzl", weight:200, climber_id: 1 },
  { title:"Headlamp", description:"Lindsay's Petzl", weight:200, climber_id: 1 },
  { title:"Hiking Poles", description:"Lindsay's", weight:1000, climber_id: 1 },
  { title:"Hiking Poles", description:"Derek's", weight:1100, climber_id: 1 },
  { title:"Locking Carabiner", description:"", weight:50, climber_id: 2 },
  { title:"Locking Carabiner", description:"", weight:50, climber_id: 2 },
  { title:"Locking Carabiner", description:"", weight:50, climber_id: 2 },
  { title:"Non-Locking Carabiner", description:"", weight:40, climber_id: 2 },
  { title:"Non-Locking Carabiner", description:"", weight:40, climber_id: 2 },
  { title:"Non-Locking Carabiner", description:"", weight:40, climber_id: 3 },
  { title:"Non-Locking Carabiner", description:"", weight:40, climber_id: 3 },
  { title:"Headlamp", description:"Derek's Petzl", weight:200, climber_id: 3 },
  { title:"Headlamp", description:"Lindsay's Petzl", weight:200, climber_id: 3 },
  { title:"Hiking Poles", description:"Lindsay's", weight:1000, climber_id: 3 },
  { title:"Hiking Poles", description:"Derek's", weight:1100, climber_id: 3 }
  ])

packed_items = PackedItem.create([
  InventoryItem.where(id: 1).select("title, description, weight, climber_id").last.attributes.merge!({ group_item: false, expeditions: Expedition.where(id: [1,2]) }),
  InventoryItem.where(id: 2).select("title, description, weight, climber_id").last.attributes.merge!({ group_item: false, expeditions: Expedition.where(id: [1,2]) }),
  InventoryItem.where(id: 3).select("title, description, weight, climber_id").last.attributes.merge!({ group_item: true, expeditions: Expedition.where(id: [1,2]) }),
  InventoryItem.where(id: 4).select("title, description, weight, climber_id").last.attributes.merge!({ group_item: true, expeditions: Expedition.where(id: [1,2]) }),
  InventoryItem.where(id: 5).select("title, description, weight, climber_id").last.attributes.merge!({ group_item: true, expeditions: Expedition.where(id: 1) }),
  InventoryItem.where(id: 6).select("title, description, weight, climber_id").last.attributes.merge!({ group_item: false, expeditions: Expedition.where(id: 1) }),
  InventoryItem.where(id: 12).select("title, description, weight, climber_id").last.attributes.merge!({ group_item: false, expeditions: Expedition.where(id: 1) }),
  InventoryItem.where(id: 13).select("title, description, weight, climber_id").last.attributes.merge!({ group_item: false, expeditions: Expedition.where(id: 1) }),
  InventoryItem.where(id: 14).select("title, description, weight, climber_id").last.attributes.merge!({ group_item: false, expeditions: Expedition.where(id: 1) }),
  InventoryItem.where(id: 20).select("title, description, weight, climber_id").last.attributes.merge!({ group_item: false, expeditions: Expedition.where(id: 1) }),
  InventoryItem.where(id: 21).select("title, description, weight, climber_id").last.attributes.merge!({ group_item: false, expeditions: Expedition.where(id: 1) }),
  InventoryItem.where(id: 22).select("title, description, weight, climber_id").last.attributes.merge!({ group_item: false, expeditions: Expedition.where(id: 1) })
  ])
