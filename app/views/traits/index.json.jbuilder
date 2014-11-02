json.array!(@traits) do |trait|
  json.extract! trait, :id, :name, :display, :description, :trait_type_id
  json.url trait_url(trait, format: :json)
end
