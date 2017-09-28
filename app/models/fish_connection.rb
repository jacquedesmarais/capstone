class FishConnection < ApplicationRecord
belongs_to :sighting
has_many :fishes

end
