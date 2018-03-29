Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createPost, Types::PostType do
    argument :place, !types.String
    argument :content, !types.String

    resolve -> (obj, args, ctx) {
      Post.create(
        place: args[:place],
        content: args[:content],
      )
    }
  end
end
