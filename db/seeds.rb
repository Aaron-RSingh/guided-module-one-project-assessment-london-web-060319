100.times do
    Restaurant.create(
        name: Faker::Restaurant.name,
        city: Faker::Address.city,
        rating: Faker::Number.between(1, 100))
end

150.times do
    User.create(
        name: Faker::Name.name,
        age: Faker::Number.between(18, 67))
end

50.times do
    Review.create(description: Faker::Food.description, personal_rating: Faker::Number.between(1, 100), restaurant_id: Restaurant.all.to_a.sample.id, user_id:User.all.to_a.sample.id)
end