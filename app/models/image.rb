class Image < ApplicationRecord
  belongs_to :post
  mount_uploader :uri, SceneImageUploader
end
