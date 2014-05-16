class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  before_action :set_article, only: [:show, :edit]

  # GET /articles
  def index
    @articles = Article.all.order(submitted_at: :desc)
  end

  # GET /articles/1
  def show
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # POST /articles
  def create
    @article = current_user.articles.create(article_params)
    
    if @article.valid?
      redirect_to @article, notice: 'Article was successfully created.' 
    else
      render :new
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_article
    @article = Article.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def article_params
    params.require(:article).permit(:title, :url)
  end
end
