class ReportsController < ApplicationController
  def index
    @expenditures = ExpenditurePolicy::Scope.new(current_rich, Expenditure).resolve
    @plannings = PlanningPolicy::Scope.new(current_rich, Planning).resolve

    build_expenditure_plan_table
  end

  def build_expenditure_plan_table
    @final_hash = {}

    @plannings.each do |planning|
      @final_hash[planning.expenditure_classification.expenditure_type] = {}

      @final_hash[planning.expenditure_classification.expenditure_type][:planning] = planning.value
    end

    @final_hash.keys.each do |type|
      expenditure = @expenditures.joins(:expenditure_classification)
                                 .where(expenditure_classifications: { expenditure_type: type })
                                 .map(&:value).reduce(:+) || 0

      @final_hash[type][:expenditure] = expenditure
    end
  end
end
