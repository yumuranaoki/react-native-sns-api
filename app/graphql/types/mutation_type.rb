Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createPost, Types::PostType do
    argument :place, !types.String
    argument :content, !types.String
    argument :img, !types.String

    resolve -> (obj, args, ctx) {
      post = Post.create(
        place: args[:place],
        content: args[:content],
      )
      img_binary = Base64.decode64(args[:img])
      post.images.create(img_binary: img_binary)
    }
  end
end
