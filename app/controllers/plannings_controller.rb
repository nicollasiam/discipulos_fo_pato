class PlanningsController < ApplicationController
  before_action :set_planning, only: %i[edit update destroy]

  def index
    @plannings = PlanningPolicy::Scope.new(current_rich, Planning).resolve
  end

  def new
    @planning = Planning.new
  end

  def create
    planning = Planning.new(planning_params)
    planning.rich = current_rich

    if planning.save
      flash[:success] = 'Item criado com sucesso!'
      redirect_to plannings_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @planning.update(planning_params)
      flash[:success] = 'Item alterado com sucesso!'
      redirect_to plannings_path
    else
      render :edit
    end
  end

  def destroy
    if @planning.destroy
      flash[:success] = 'Item excluído com sucesso!'
    else
      flash[:alert] = 'Não foi possível excluir o item'
    end

    redirect_to plannings_path
  end

  private

  def planning_params
    params.require(:planning).permit(:value, :expenditure_classification_id)
  end

  def set_planning
    @planning = Planning.find(params[:id])
  end
end
