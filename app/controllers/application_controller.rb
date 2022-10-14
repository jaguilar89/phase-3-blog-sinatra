class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  get "/posts" do
    posts = Post.all
    posts.to_json
  end

  get "/posts/:id" do
    post = Post.find(params[:id])
    post.to_json
  end

  #fetch comments for a post
  get "/comments/:id" do
    comments = Comment.where(post_id: params[:id])
    comments.to_json
  end

  post "/posts" do
    new_post = Post.create(title: params[:title], body: params[:body])
    new_post.to_json
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
