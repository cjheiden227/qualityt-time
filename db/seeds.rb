# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Video.create(uid: 'b_BJo4wZPIM', 
			title: "comfy dog gets comfy", 
			description: "some description", 
			thumbnail: "some URL", 
			views: 13, 
			link: "https://www.youtube.com/embed/b_BJo4wZPIM")
Video.create(uid: 'another id', 
			title: "comfy dog gets comfy", 
			description: "some description", 
			thumbnail: "some URL", 
			views: 13, )