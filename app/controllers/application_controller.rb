class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  get "/posts/" do
    posts = Post.all
    posts.to_json
  end

  get "/posts/:id" do
    post = Post.find(params[:id])
    comments_in_post = post.comments

    post_hash = post.as_json #Post instance converted to hash
    post_comments_hash = comments_in_post.as_json #Comment instance converted to hash
    post_hash["comments"] = post_comments_hash #Merges both hashes into one

    post_hash.to_json #returns hash containing the post and its comments, converted to json
  end

  #fetch all comments
  get "/comments/" do
    comments = Comment.all
    comments.to_json
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
