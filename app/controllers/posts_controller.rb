# require 'pry'

class PostsController < ApplicationController
  
  def new
  end
  
  def index
    @posts = Post.all
  end

  def create
    # binding.pry
    Post.create(title: params[:post][:title], description: params[:post][:description])
    redirect_to posts_path
  end
  
end
