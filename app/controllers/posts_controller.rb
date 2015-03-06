class PostsController < ApplicationController
  def post_show
    @all_posts = Post.all
  end

  def show
    @user_posts = Post.find(params[:id])
  end

  def show_users_posts
    @user_posts = Post.where(user_id: params[:user_id])
  end
end
