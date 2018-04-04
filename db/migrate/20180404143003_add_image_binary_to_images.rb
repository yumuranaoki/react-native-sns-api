class AddImageBinaryToImages < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :img_binary, :binary
  end
end
