json.array!(@trait_types) do |trait_type|
  json.extract! trait_type, :id, :name, :display, :description
  json.url trait_type_url(trait_type, format: :json)
end
