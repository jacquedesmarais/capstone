class Fish < ApplicationRecord
belongs_to :fish_connection, optional: true
has_many :images
has_many :aquarium_fishes

  def default_image
    if images.count > 0
      images.first.url
    else
      "https://vignette.wikia.nocookie.net/pixar/images/3/39/59.png/revision/latest/scale-to-width-down/308?cb=20170511011455"
    end
  end

end
