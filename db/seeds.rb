# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.destroy_all
Photo.destroy_all
Comment.destroy_all

cam = User.create! email: "cameron.averill@twiceyalerejects.com", password: "password", password_confirmation: "password"
erica = User.create! email: "du.me.erica@betterthanu.com", password: "password", password_confirmation: "password"

cam1 = Photo.create! caption: "transformation tuesday", image: "/img/cam-selfie.jpg", :public => false, user_id: cam.id
cam2 = Photo.create! caption: "taken when I was still training at the Parisian Opera Ballet", image: "/img/ballet.jpg", :public => true, user_id: cam.id
cam3 = Photo.create! caption: "dis is also me", image: "https://s-media-cache-ak0.pinimg.com/736x/de/4a/1a/de4a1aba9545812381433ab48e3cbb6b.jpg", :public => true, user_id: cam.id

erica1 = Photo.create! caption: "just chillin with da homebrus! #aoboismybestfriend", image: "https://media.licdn.com/mpr/mpr/shrinknp_400_400/p/4/005/0aa/19b/18f8d4c.jpg", :public => true, user_id: erica.id

comment = Comment.create! body: "u look dum lolz", photo_id: cam2.id, user_id: erica.id