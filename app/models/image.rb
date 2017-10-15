class Image < ApplicationRecord
belongs_to :fish
mount_uploader :image, PhotoUploader

end
