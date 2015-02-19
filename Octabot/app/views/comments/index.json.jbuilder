json.array!(@comments) do |comment|
  json.extract! comment, :id, :content, :name
  json.url comment_url(comment, format: :json)
end
