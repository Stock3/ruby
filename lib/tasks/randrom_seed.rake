namespace :db do
  namespace :seed do
    task random: :environment do
      seed_file = File.join(Rails.root, 'db', 'random_seeds.rb')
      load seed_file
      p 'Done!'
    end
  end
end