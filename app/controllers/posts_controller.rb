class PostsController < ApplicationController
  def index
    posts = Post.all.map { |post| post.slice(:id, :title) }
    render inertia: "posts/index", props: { posts: posts }
  end
end
