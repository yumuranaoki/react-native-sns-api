class AddPostRefToImages < ActiveRecord::Migration[5.1]
  def change
    add_reference :images, :post, foreign_key: true
  end
end
