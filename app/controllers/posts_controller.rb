class PostsController < ApplicationController
  def create
    post_params = params[:post]
    place = post_params.split(',')[0].split(':')[2][1..-3]
    content = post_params.split(',')[1].split(':')[2][1..-4]
    image_params = params[:image]
    post = Post.new(place: place, content: content)
    if post.save
      #ここにImageのインスタンスの作成
      #Image class belong to Post Class
      image = post.images.build(img: image_params)
      image.save!
      url = image.img.url
      image.url = url
      image.save!
    end
  end

  def show
    post = []
    posts = Post.all
    posts.each do |p|
      image_arr = []
      p.images.each do |image|
        image_arr << image.img
      end
      post << { "place": p.place, "content": p.content, "image_arr": image_arr[0] }
    end
    render json: post
  end

  private
    def post_params

    end
end
