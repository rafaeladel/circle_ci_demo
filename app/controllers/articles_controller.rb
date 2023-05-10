class ArticlesController < ApplicationController
  http_basic_authenticate_with name: 'rafael', password: 'adel', only: :destroy
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save 
      redirect_to @article
    else 
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params) 
      redirect_to @article
    else 
      render :edit, status: :unprocessable_entity
    end
  end

  def toggle_archive 
    @article = Article.find(params[:article_id])
    new_status = @article.archived? ? 'public' : 'archived'
    if @article.update!(status: new_status)
      redirect_to @article
    else 
      render json: :show, status: :unprocessable_entity
    end
  end

  def destroy 
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path, status: :see_other
  end

  private
  def article_params
    params.require(:article).permit(:title, :body, :status)
  end
end