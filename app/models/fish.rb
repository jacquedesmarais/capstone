class Fish < ApplicationRecord
belongs_to :fish_connection, optional: true
has_many :images
has_many :aquarium_fishes

end
