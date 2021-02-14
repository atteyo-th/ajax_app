class PostsController < ApplicationController
  def index
    # DESC は降順という意味
    @posts = Post.all.order(id: "DESC") 
  end

  # def new　　削除
  # end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end
  
end