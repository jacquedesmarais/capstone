class User < ApplicationRecord
has_secure_password
has_many :sightings
validates :email, uniqueness: true

end
