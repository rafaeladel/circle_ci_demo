class CommentsController < ApplicationController

    def create 
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create(comments_params)
        redirect_to @article
    end



    private
    def comments_params
        params.require(:comment).permit(:author, :body, :status)
    end
end
