class ArticlesController < ApplicationController 
    def show 
        @articles = Article.find(params[:id])
    end

    def index
        @articles= Article.all
    end
     
    def new
    end

    def create
        @article =Article.new(params.require(:article).permit(:title, :describe))
        @article.save
        redirect_to articles_path
    end

    def edit
        @article =Article.find(params[:id])
    end

    def update 
        @article =Article.find(params[:id])
        @article.update(params.require(:article).permit(:title, :describe))
        redirect_to articles_path
    end

    def destroy
        @article =Article.find(params[:id])
        @article.destroy
        redirect_to articles_path
    end
end