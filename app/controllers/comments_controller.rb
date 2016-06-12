class CommentsController < ApplicationController

    def index
    end

    def new
        @post = Post.find(params[:post_id])
        @comment = @post.comments.new
    end 


    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.new(comment_params)
        @comment.user_id = current_user.id
        if @comment.save 
            redirect_to @post, notice: 'Comment accept.'
        else
            redirect_to posts_path, notice: 'Comment don`t accept.'
        end
    end

    def destroy
        @post = Post.find(params[:post_id])
        comment = @post.comments.find(params[:id])
        comment.destroy
        redirect_to @post
    end

private

    def comment_params
      params.require(:comment).permit(:body)
    end
end
