class Image < ApplicationRecord
  belongs_to :post
  mount_uploader :img, SceneImageUploader
end
