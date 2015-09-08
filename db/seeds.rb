require 'factory_girl'

benchmark = Benchmark.measure do
  ActiveRecord::Base.transaction do
    10.times do
      FactoryGirl.create :planet
      FactoryGirl.create :job
      FactoryGirl.create :robot_model
      FactoryGirl.create :spaceship_model
    end

    FactoryGirl.create :robot, id: '10000000-0000-4000-8000-00000000000', name_first: 'Bender Bending', name_last: 'Rodriguez'
    30.times do
      FactoryGirl.create :robot
    end

    100.times do
      FactoryGirl.create :laser_gun
      FactoryGirl.create :power_armor
    end

    10.times do
      FactoryGirl.create :spaceship
    end
  end
end

puts benchmark
