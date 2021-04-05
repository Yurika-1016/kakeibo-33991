class IncomesController < ApplicationController
  def new
    @income = Income.new
  end

  def create
    @income = Income.new(income_params)
    if @income.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def income_params
    params.require(:income).permit(:income_category_id, :price).merge(user_id: current_user.id)
  end
end
