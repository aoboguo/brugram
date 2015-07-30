# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Photo.delete_all
User.delete_all

user = User.create! email: "cameron.averill@twiceyalerejects.com", password: "password", password_confirmation: "password"

Photo.create! caption: "transformation tuesday", image: "/img/cam-selfie.jpg", :public => true, user: user
Photo.create! caption: "taken when I was still training at the Parisian Opera Ballet", image: "/img/ballet.jpg", :public => true, user: user