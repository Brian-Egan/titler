json.array!(@nouns) do |noun|
  json.extract! noun, :word, :word2
  json.url noun_url(noun, format: :json)
end
