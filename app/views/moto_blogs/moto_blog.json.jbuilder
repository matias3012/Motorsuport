json.extract! moto_blog, :id, :title, :story, :author, :created_at, :updated_at
json.url moto_blog_url(moto_blog, format: :json)
