class Public::WorkCommentsController < ApplicationController

  def create
    work = Work.find(params[:work_id])
    comment = current_employee.work_comments.new(work_comment_params)
    comment.work_id = work.id
    comment.save
    redirect_to request.referer
  end

  def destroy
    comment = WorkComment.find(params[:id])
    comment.destroy
    redirect_to request.referer
  end

  private

  def work_comment_params
    params.require(:work_comment).permit(:body)
  end

end
