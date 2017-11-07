class Aquarium < ApplicationRecord
# belongs_to :aquarium_fish, optional: true
has_many :fishes
has_many :tips
belongs_to :sighting, optional: true
# belongs_to :fish, optional: true

end
