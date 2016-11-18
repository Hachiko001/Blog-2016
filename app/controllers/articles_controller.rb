class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  def create
    title=params[:article][:title]
    content=params[:article][:content]

    article=Article.create(title:title,content:content)

    if(article.nil?)
      render 'new'
    else
      redirect_to articles_path
    end
  end
  def update
      article =Article.find(params[:id])

      if (article.update(article_params).present?)
        redirect_to articles_path(params[:id])
      else
        render 'edit'
    end
  end
  def article_params
    params.require(:article).permit(:title,:content)
  end
  def destroy
    Article.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to articles_path
  end
  def new
    @article=Article.new
  end
  def show
    @article=Article.find(params[:id])
    
  end
  def edit
    @article=Article.find(params[:id])
  end

  def comment
    @article=Article.find(params[:id])
  end
end
