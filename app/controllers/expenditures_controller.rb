class ExpendituresController < ApplicationController
  def index
    @expenditures = ExpenditurePolicy::Scope.new(current_rich, Expenditure).resolve
  end

  def new
    @expenditure = Expenditure.new
  end

  def create
    expenditure = Expenditure.new(expenditure_params)
    expenditure.rich = current_rich

    if expenditure.save
      flash[:success] = 'Gasto cadastrado com sucesso!'
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def expenditure_params
    params.require(:expenditure).permit(:value, :payment_date, :information,
                                        :reference_month, :reference_year,
                                        :expenditure_classification_id,
                                        :rich_id, :planned)
  end
end
