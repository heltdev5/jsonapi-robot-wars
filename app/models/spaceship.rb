# == Schema Information
#
# Table name: spaceships
#
#  id                 :uuid             not null, primary key
#  name               :string
#  durability         :integer
#  quality            :integer
#  pilot_id           :uuid
#  pilot_type         :string
#  spaceship_model_id :uuid
#  location_id        :uuid
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Spaceship < ActiveRecord::Base
  belongs_to :pilot, polymorphic: true

  belongs_to :spaceship_model
  belongs_to :robot
  belongs_to :location
end