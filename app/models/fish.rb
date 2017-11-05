class Fish < ApplicationRecord
mount_uploaders :images, PhotoUploader
belongs_to :fish_connection, optional: true
has_many :aquarium_fishes
has_many :aquariums

  def default_image
    if images.count > 0
      images.first.url
    else
      "https://vignette.wikia.nocookie.net/pixar/images/3/39/59.png/revision/latest/scale-to-width-down/308?cb=20170511011455"
    end
  end

  def to_param
    name
  end

end
