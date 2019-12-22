# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cities = City.create([{name: 'New York'}, {name:'Boston'}, {name: 'San-Francisco'}])

plans = Plan.create([{name: 'Plan A', price: 75},
                    {name: 'Plan B', price: 95},
                    {name: 'Plan C', price: 150}])

customers = Customer.create([{name: 'Jacob', surname: 'Davis', city: cities[0]},
                            {name: 'Mason', surname: 'Miller', city: cities[0]},
                            {name: 'Emma', surname: 'White', city: cities[1]},
                            {name: 'Olivia', surname: 'Lewis', city: cities[1]},
                            {name: 'Grace', surname: 'Hill', city: cities[2]},
                            {name: 'Daniel', surname: 'Baker', city: cities[2]}])

numbers = Number.create([{number: '12345987878', customer:customers[0], plan: plans[0]},
                        {number: '78457845412', customer:customers[0], plan: plans[1]},
                        {number: '32789876465', customer: customers[1], plan: plans[1]},
                        {number: '78946489785', customer: customers[2], plan: plans[2]},
                        {number: '54649845465', customer: customers[3], plan: plans[0]},
                        {number: '54287455546', customer: customers[4], plan: plans[2]},
                        {number: '89745645656', customer: customers[5], plan: plans[1]}])

calls = Call.create([{source_number: numbers[0], target_number: numbers[2], call_length: 20, time: Time.now},
                     {source_number: numbers[0], target_number: numbers[3], call_length: 15, time: Time.now},
                     {source_number: numbers[1], target_number: numbers[4], call_length: 120, time: Time.now},
                     {source_number: numbers[1], target_number: numbers[5], call_length: 46, time: Time.now},
                     {source_number: numbers[2], target_number: numbers[1], call_length: 78, time: Time.now},
                     {source_number: numbers[2], target_number: numbers[4], call_length: 16, time: Time.now},
                     {source_number: numbers[2], target_number: numbers[5], call_length: 98, time: Time.now},
                     {source_number: numbers[3], target_number: numbers[1], call_length: 54, time: Time.now},
                     {source_number: numbers[4], target_number: numbers[5], call_length: 32, time: Time.now},
                     {source_number: numbers[4], target_number: numbers[3], call_length: 42, time: Time.now},
                     {source_number: numbers[4], target_number: numbers[1], call_length: 37, time: Time.now},
                     {source_number: numbers[5], target_number: numbers[2], call_length: 61, time: Time.now},
                     {source_number: numbers[5], target_number: numbers[0], call_length: 8, time: Time.now}])
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')