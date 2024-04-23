class Public::SearchesController < ApplicationController
  def search
    @model = params[:model]
    @content = params[:content]
    if @model == 'work'
      @records = Work.search_for(@content)
      @records = @records.order(:date)
    elsif @model == 'employee'
      @records = Employee.search_for(@content)
    else
      @records = Address.search_for(@content)
    end
  end
end
