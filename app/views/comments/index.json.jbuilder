json.array!(@comments) do |comment|
  json.extract! comment, :teacher, :user, :body
  json.url comment_url(comment, format: :json)
end
