class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id

    if @comment.save
      redirect_to topics_path, success: 'コメントしました'
    else
      # flash.now[:danger] = 'コメントできませんでした'
      # redirect_to topics_path, danger: 'コメントできませんでした'
      
      flash.now[:danger] = 'コメントできませんでした'
      render :new
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:topic_id,:come)
  end

end
