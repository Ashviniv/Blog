json.extract! article, :id, :content, :author, :created_at, :updated_at
json.url article_url(article, format: :json)