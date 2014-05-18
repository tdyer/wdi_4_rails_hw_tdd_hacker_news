class CommentsController < ApplicationController
  before_action :authenticate_user!

  before_action :set_comment, only: [:show]  
  before_action :set_article, only: [:new,:create]

  def show
  end
  
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
    @article = current_user.articles.find(params[:article_id])
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params[:comment][:user_id] = current_user.id
    params.require(:comment).permit(:content, :user_id, :article_id)
  end

end
