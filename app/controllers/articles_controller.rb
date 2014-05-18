class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  before_action :set_article, only: [:show,:edit,:update,:destroy]

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
      flash.now[:error] = 'Could not create article'
      render :new
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to @article, notice: 'Updated Article'
    else
      flash.now[:error] = 'Could not update article'
      render :edit
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path, notice: "Removed Article \"#{@article.title}\""
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
