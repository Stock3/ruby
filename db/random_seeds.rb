require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cities = []
plans = []
customers = []
numbers = []
calls = []

cities_count = 4
plans_count = 3
customers_count = 10
numbers_count = 20
calls_count = 100

(1..cities_count).each do
  city = {name: Faker::Address.city[0..79]}
  cities.push(city)
end
cities = City.create(cities)

(1..plans_count).each do
  plan = {
      name: Faker::Marketing.buzzwords[0..19],
      price: rand(50..100)
  }
  plans.push(plan)
end
plans = Plan.create(plans)

(1..customers_count).each do
  city = cities[rand(0..(cities_count-1))]
  customer = {
      name: Faker::Name.first_name,
      surname: Faker::Name.last_name,
      city: city
  }
  customers.push(customer)
end
customers = Customer.create(customers)

(1..numbers_count).each do
  customer = customers[rand(0..(customers_count-1))]
  plan = plans[rand(0..(plans_count-1))]
  number = {
      number: Faker::Number.number(digits: 10),
      customer: customer,
      plan: plan
  }
  numbers.push(number)
end
numbers = Number.create(numbers)

(1..calls_count).each do
  source = numbers[rand(0..numbers_count-1)]
  target = numbers[rand(0..numbers_count-1)]
  call = {
      source_number: source,
      target_number: target,
      call_length: rand(10..300),
      time: Time.now
  }
  calls.push(call)
end

calls = Call.create(calls)
