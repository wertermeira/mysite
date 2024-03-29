# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

50.times do |i|
  Post.create(title:Faker::Name.title, description: Faker::Hipster.paragraph(2), link: Faker::Internet.url)
  Image.create(file: Faker::Avatar.image, post_id: i + 1 )
end

15.times do
  Contact.create(name: Faker::Name.name, email: Faker::Internet.email, subject: Faker::Lorem.word, body: Faker::Lorem.paragraph(2, false, 6), read: Faker::Boolean.boolean)
end