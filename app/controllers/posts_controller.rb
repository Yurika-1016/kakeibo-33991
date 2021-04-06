class PostsController < ApplicationController
  def index
    @spendings = Spending.all.order(created_at: 'desc')
    @incomes = Income.all.order(created_at: 'desc')
  end
end
