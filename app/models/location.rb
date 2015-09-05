# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  planet_id  :uuid
#  cords_x    :string
#  cords_y    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Location < ActiveRecord::Base
  belongs_to :planet
  has_one :entity

  validates :cords_x, presence: true
  validates :cords_y, presence: true
end
