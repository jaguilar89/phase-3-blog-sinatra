class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/posts" do
    posts = Post.all
    posts.to_json
  end

  get "/posts/:id" do
    post = Post.find(params[:id])
    post.to_json
  end
end
