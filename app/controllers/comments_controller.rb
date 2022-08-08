class CommentsController < ApplicationController
    def create
        @articles =Article.find(params[:article_id])
        @comments= @articles.comments.create(params.require(:comment).permit(:name, :content))
        redirect_to article_path(@articles)
    end


end
