class PostsController < ApplicationController
  def create
    logger.debug("デバッグ: #{params}")
    place = params[:place][:text]
    content = params[:content][:text]
    images = params[:imageData][:_parts]
    image_uri = []
    images.each do |image|
      #image[1]が常に使用可能かは要調査
      image_uri << image[1][:uri]
    end
    logger.debug(image_uri)
    post = Post.new(place: place, content: content)
    if post.save
      #ここにImageのインスタンスの作成
      #Image class belong to Post Class
      image_uri.each do |uri|
        post.images.create(uri: uri)
      end
    end
  end

  def show
    post = []
    posts = Post.all
    posts.each do |p|
      image_uri_arr = []
      p.images.each do |image|
        image_uri_arr << image.uri
      end
      post << { "place": p.place, "content": p.content, "image_uri_arr": image_uri_arr }
    end
    render json: post
  end
end
