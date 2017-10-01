class Aquarium < ApplicationRecord
belongs_to :aquarium_fish, optional: true
belongs_to :sighting, optional: true
has_many :tips

end
