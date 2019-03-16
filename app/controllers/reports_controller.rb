class ReportsController < ApplicationController
  def index
    @expenditures = ExpenditurePolicy::Scope.new(current_rich, Expenditure).resolve
    @plans = PlanPolicy::Scope.new(current_rich, Plan).resolve

    build_expenditure_plan_table
  end

  def build_expenditure_plan_table
  end
end
