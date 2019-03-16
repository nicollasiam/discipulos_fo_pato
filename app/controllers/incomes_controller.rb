class IncomesController < ApplicationController
  def index
    @incomes = IncomePolicy::Scope.new(current_rich, income).resolve
  end

  def new
    @income = Income.new
  end

  def create
    income = Income.new(income_params)
    income.rich = current_rich

    if income.save
      flash[:success] = 'Ganho cadastrado com sucesso!'
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def income_params
    params.require(:income).permit(:value, :information, :rich_id,
                                   :reference_month, :reference_year)
  end
end
