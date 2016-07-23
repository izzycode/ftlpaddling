# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
TideStation.create(id: 1, name: "Andrews Avenue bridge", mobilegeographics_id: 152)
Location.create(lat: "26.1122138", long: "-80.1228696", name: "Bahia Mar", distance: 0, direction: "origin", tide_station_id: 1) 
Location.create(lat: "26.11745", long: "-80.14954", name: "Cooley's Landing", distance: 3.25, direction: "W", tide_station_id: 1)
Location.create(lat: "26.1183", long: "-80.1450", name: "Andrews Ave Bridge", distance: 3.5, direction: "W", tide_station_id: 1)
Location.create(lat: "26.08839", long: "-80.17809", name: "Secret Woods Nature Center", distance: 6, direction: "W", tide_station_id: 1)
Location.create(lat: "26.08051", long: "-80.19448", name: "Pond Apple Slough", distance: 6.4, direction: "W", tide_station_id: 1)
Location.create(lat: "26.09135", long: "-80.2004", name: "Riverland Boat Launch", distance: 7.1, direction: "W", tide_station_id: 1)
Location.create(lat: "26.14057", long: "-80.11605", name: "George English Park", distance: 3.5, direction: "N", tide_station_id: 1)
Location.create(lat: "26.15837", long: "-80.11684", name: "Sunrise Paddleboards", distance: 4.75, direction: "N", tide_station_id: 1)
Location.create(lat: "26.16305", long: "-80.13577", name: "Island City Park", distance: 6.25, direction: "N", tide_station_id: 1)
Location.create(lat: "26.08", long: "-80.11169", name: "Whiskey Creek North End", distance: 2.8, direction: "S", tide_station_id: 1)
Location.create(lat: "26.055", long: "-80.11329", name: "Whiskey Creek South End", distance: 3.7, direction: "S", tide_station_id: 1)
Location.create(lat: "26.00867", long: "-80.11703", name: "Hollywood Beach", distance: 7.4, direction: "S", tide_station_id: 1)
