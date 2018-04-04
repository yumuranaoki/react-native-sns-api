class ImagesController < ApplicationController
  def show
    image = Image.find_by(post_id: params[:id])
    send_data image.img_binary, :type => 'image/jpeg', :disposition => 'inline'
  end
end
