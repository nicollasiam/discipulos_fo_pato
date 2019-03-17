class ReportsController < ApplicationController
  def index
    @expenditures = ExpenditurePolicy::Scope.new(current_rich, Expenditure).resolve
    @plannings = PlanningPolicy::Scope.new(current_rich, Planning).resolve

    apply_filters

    build_expenditure_plan_table
  end

  def build_expenditure_plan_table
    @final_hash = {}

    @plannings.each do |planning|
      @final_hash[planning.expenditure_classification.expenditure_type] = {}

      @final_hash[planning.expenditure_classification.expenditure_type][:planning] = planning.value
    end

    @final_hash.keys.each do |type|
      set_expenditure(type)
      set_planned(type)
    end
  end

  private

  def apply_filters
    year_filter
    month_filter
  end

  def year_filter
    @expenditures = @expenditures.where(reference_year: params[:year]) if params[:year].present?

    @expenditures = @expenditures.where(reference_year: Time.now.year) unless params[:year].present?
  end

  def month_filter
    @expenditures = @expenditures.where(reference_month: params[:month]) if params[:month].present?

    @expenditures = @expenditures.where(reference_month: Time.now.month) unless params[:month].present?
  end

  def set_expenditure(type)
    expenditure = @expenditures.joins(:expenditure_classification)
                               .where(expenditure_classifications: { expenditure_type: type }, planned: false)
                               .map(&:value).reduce(:+) || 0

    @final_hash[type][:expenditure] = expenditure
  end

  def set_planned(type)
    planned = @expenditures.joins(:expenditure_classification)
                           .where(expenditure_classifications: { expenditure_type: type }, planned: true)
                           .map(&:value).reduce(:+) || 0

    @final_hash[type][:planned] = planned
  end
end
