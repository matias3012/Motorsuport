json.extract! blog, :id, :title, :story, :author, :created_at, :updated_at
json.url blog_url(blog, format: :json)
