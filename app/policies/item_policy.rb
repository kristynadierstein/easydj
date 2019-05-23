class ItemPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def create
      return true if current_user
    end
  end
end
