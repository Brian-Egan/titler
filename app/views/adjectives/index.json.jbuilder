json.array!(@adjectives) do |adjective|
  json.extract! adjective, :word, :word2
  json.url adjective_url(adjective, format: :json)
end
