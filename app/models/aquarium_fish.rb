class AquariumFish < ApplicationRecord
belongs_to :fish
has_many :aquariums

end
