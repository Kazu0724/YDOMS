class Admin::WorkCommentsController < ApplicationController

  def destroy
    comment = WorkComment.find(params[:work_id])
    comment.destroy
    redirect_to request.referer
  end

  private

  def work_comment_params
    params.require(:work_comment).permit(:body)
  end

end
