class Sighting < ApplicationRecord
belongs_to :user
has_many :fish_connections
has_many :aquariums

end
