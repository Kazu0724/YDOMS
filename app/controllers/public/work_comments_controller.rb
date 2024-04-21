class Public::WorkCommentsController < ApplicationController

  def create
    @work = Work.find(params[:work_id])
    @work_comment = WorkComment.new(work_comment_params)
    @work_comment.work_id = @work.id
    @work_comment.employee_id = current_employee.id
    @work_comment.save
  end

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
