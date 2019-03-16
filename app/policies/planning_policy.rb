class PlanningPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # scope.all
      scope.where(rich_id: user)
    end
  end
end
