class CommentsController < ApplicationController

  before_action :get_article, [:new,:create]
  
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
  end
  
  private

  def get_article
    @article = Article.find(params[:article])
  end
  
  def comment_params
    params.require(:article).permit(:article)
  end

end
