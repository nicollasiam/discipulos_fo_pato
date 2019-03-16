class ExpendituresController < ApplicationController
  def index
    @expenditures = ExpenditurePolicy::Scope.new(current_rich, Expenditure).resolve
  end

  def new
    @expenditure = Expenditure.new
  end
end
