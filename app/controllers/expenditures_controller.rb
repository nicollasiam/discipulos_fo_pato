class ExpendituresController < ApplicationController
  def index
    # @expenditures = policy_scope(Expenditure)
    @expenditures = ExpenditurePolicy::Scope.new(current_rich, Expenditure).resolve
  end
end
