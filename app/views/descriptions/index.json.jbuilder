json.array!(@descriptions) do |description|
  json.extract! description, :word, :type
  json.url description_url(description, format: :json)
end
