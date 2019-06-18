class TodoPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def index?
    true
  end

  def create?
    user == record.user
  end

  def destroy?
    user == record.user
  end

  def update?
    user == record.user
  end
end
