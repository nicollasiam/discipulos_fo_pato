class ExpendituresController < ApplicationController
  before_action :set_expenditure, only: %i[edit update destroy]

  def index
    @expenditures = ExpenditurePolicy::Scope.new(current_rich, Expenditure).resolve
    @expenditures = @expenditures.where(reference_year: Time.now.year)

    build_expenditures_hash
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

  def edit

  end

  private

  def expenditure_params
    params.require(:expenditure).permit(:value, :payment_date, :information,
                                        :reference_month, :reference_year,
                                        :expenditure_classification_id,
                                        :rich_id, :planned)
  end

  def set_expenditure
    @expenditure = Expenditure.find(params[:id])
  end

  def build_expenditures_hash
    @final_hash = {}

    @expenditures.each do |expenditure|
      @final_hash[expenditure.reference_month] = [] unless @final_hash.key?(expenditure.reference_month)

      @final_hash[expenditure.reference_month].push(build_single_expenditure_hash(expenditure))
    end
  end

  def build_single_expenditure_hash(expenditure)
    {
      info: expenditure.information,
      value: expenditure.value,
      type: expenditure.expenditure_classification.expenditure_type,
      planned: expenditure.planned,
      id: expenditure.id
    }
  end
end
