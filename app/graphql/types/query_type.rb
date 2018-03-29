Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.
  field :allPost do
    type types[Types::PostType]
    resolve -> (obj, args, ctx) {
      Post.all
    }
  end

  field :post do
    type Types::PostType
    argument :id, !types.ID
    resolve -> (obj, args, ctx) {
      Post.find(args[:id])
    }
  end
end
