class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  get "/posts/" do
    posts = Post.all
    posts.to_json
  end

  #Fetch blog post along with associated comments
  get "/posts/:id" do
    post = Post.find(params[:id])
    post.to_json(include: :comments)
  end

  post "/posts" do
    new_post = Post.create(title: params[:title], body: params[:body])
    new_post.to_json
  end

  post "/comments/" do
    new_comment = Comment.create(
      name: params[:name],
      body: params[:body],
      post_id: params[:post_id],
    )
    new_comment.to_json
  end

  patch "/posts/:id" do
    post = Post.find(params[:id])
    updated_post = post.update(body: params[:body])
    updated_post.to_json
  end

  delete "/posts/:id" do
    post_to_delete = Post.find(params[:id])
    post_to_delete.delete
    post_to_delete.to_json
  end
end
