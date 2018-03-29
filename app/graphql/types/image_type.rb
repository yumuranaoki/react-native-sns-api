Types::ImageType = GraphQL::ObjectType.define do
  name "Image"

  field :id, types.ID
  field :img, types.String
  field :url, types.String
end
