class Aquarium < ApplicationRecord
belongs_to :aquarium_fish
belongs_to :sighting
has_many :tips

end
