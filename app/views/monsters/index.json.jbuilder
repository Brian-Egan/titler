json.array!(@monsters) do |monster|
  json.extract! monster, :name
  json.url monster_url(monster, format: :json)
end
