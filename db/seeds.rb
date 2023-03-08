# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

regions = [{name:"North"},{name:"Central"}, {name:"Detroit-Metro"}]
clubs = [{name:"Burton", address:"123 Burton", region: Region.find_by_name("North")}]

regions.map do |region|
     Region.create(region)
    end
User.create(name:"Tyler", email:"ty.huff24@gmail.com", password:"eec141619.", is_admin: true, region: Region.find_by(name: "North"))
clubs.map do |club|
    Club.create(club)
end
