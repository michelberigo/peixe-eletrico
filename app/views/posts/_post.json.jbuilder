json.extract! post, :id, :titulo, :descricao, :created_at, :updated_at, :comments

json.author do
  json.email post.user.email
end

json.url post_url(post, format: :json)
