class StatementsController < ApplicationController
  def index
    @statements = Statement.all
  end

  def new
    @statement = Statement.new
    @statement.attachment
  end

  def create
    @statement = Statement.new(statement_params)

    if @statement.save
      redirect_to statements_path, notice: "The statement #{@statement.attachment.url} has been uploaded."
    else
      render "new"
    end
  end

  def destroy
    @statement = Statement.find(params[:id])
    @statement.destroy
    redirect_to statements_path, notice: "The statement #{@statement.attachment.url} has been removed."
  end

  private
    def statement_params
      params.require(:statement).permit(:attachment)
    end

end
