class Admin::WorkCommentsController < ApplicationController

  def destroy
    @work = Work.find(params[:work_id])
    @work_comment = WorkComment.find(params[:id])
    @work_comment.destroy
  end

  private

  def work_comment_params
    params.require(:work_comment).permit(:body)
  end

end
