json.array!(@posts) do |post|
  json.extract! post, :id, :body, :user_id, :title
  json.url post_url(post, format: :json)
end
