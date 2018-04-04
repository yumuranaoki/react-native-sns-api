Types::ImageType = GraphQL::ObjectType.define do
  name "Image"

  field :id, types.ID
  field :url, types.String
end
