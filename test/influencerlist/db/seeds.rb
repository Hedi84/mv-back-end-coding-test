# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



puts "destroying previous influencers"
Influencer.destroy_all

influencer_list = [

 [987,'Anna Griffin','anna_griffin_123','https://randomuser.me/api/portraits/women/6.jpg',21231,6.84],
 [876,'Melissa Peterson','melissa_peterson','https://randomuser.me/api/portraits/women/84.jpg',5122,5.23],
 [765,'Kathryn Smith','kat_smith','https://randomuser.me/api/portraits/women/71.jpg',7161,2.36],
 [654,'Patricia Rios','patricia_rios_1993','https://randomuser.me/api/portraits/women/49.jpg',91100,1.61],
 [543,'Joan Robertson','j_robertson_lol','https://randomuser.me/api/portraits/women/26.jpg',16013,6.28],
 [432,'Sharon Hopkins','sharon_hopkins234','https://randomuser.me/api/portraits/women/44.jpg',37300,4.73],
 [123,'Hannah Ross','hross64346','https://randomuser.me/api/portraits/women/62.jpg',3300,4.73],
 [234,'Emily White','emwhite','https://randomuser.me/api/portraits/women/14.jpg',13500,1.05],
 [345,'Olivia Wagner','olivia_wagner_official','https://randomuser.me/api/portraits/women/29.jpg',1000,2.0],
]

puts "creating influencers"

influencer_list.each do |id, name, user_name, photo_link, followers, percentage|
  Influencer.create( id: id, influencer_full_name: name, influencer_instagram_username: user_name, influencer_instagram_profile_image: photo_link, statistics_followers: followers, statistics_engagement: percentage )
end

puts "done"
