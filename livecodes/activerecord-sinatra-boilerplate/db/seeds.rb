require 'faker'

50.times do
  r = Restaurant.new(
    name: Faker::BossaNova.song,
    address: "Street #{Faker::BossaNova.artist}",
    rating: rand(0..10),
    cuisine: Faker::Restaurant.type
  )

  r.save!
end
