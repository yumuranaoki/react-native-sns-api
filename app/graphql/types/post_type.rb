Types::PostType = GraphQL::ObjectType.define do
  name "Post"

  field :id, !types.ID
  field :place, !types.String
  field :content, !types.String

  field :images do
    type types[Types::ImageType]
    resolve -> (obj, args, ctx) {
      obj.images
    }
  end
end
