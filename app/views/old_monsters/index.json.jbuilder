json.array!(@old_monsters) do |old_monster|
  json.extract! old_monster, 
  json.url old_monster_url(old_monster, format: :json)
end
