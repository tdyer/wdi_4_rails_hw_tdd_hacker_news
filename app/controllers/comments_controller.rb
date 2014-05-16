class CommentsController < ApplicationController
  before_action :set_article, only: [:new,:create]
  
  def new
    @comment = Comment.new
  end

  def create
    @comment = @article.comments.create(comment_params)
    
    if @comment.save
      redirect_to article_path(@article.id), notice: 'Comment was created'
    else
      flash.now[:error] = 'Failed to create comment'
      render :new
    end
  end
  
  private

  def set_article
    @article = Article.find(params[:article_id])
  end
  
  def comment_params
    params.require(:comment).permit(:content)
  end

end
