class Api::V1::CommentsController < ApplicationController
  
    def index
        post = Post.find(params[:post_id])
        comments = post.comments
        render json: { comments: comments }
      end
    
      def create
        post = Post.find(params[:post_id])
        comment = post.comments.new(comment_params)
        # comment.user = User.find_by(id: session[:user_id])
    
        if comment.save
          render json: { comment: comment }
        else
          render json: { error: comment.errors.full_messages }, status: :unprocessable_entity
        end
      end
    
      private
    
        def comment_params
          params.require(:comment).permit(:title, :user_id)
        end
  end
  