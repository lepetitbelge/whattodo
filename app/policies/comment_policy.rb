class CommentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user).order(created_at: :desc)
    end
  end

  def create?
    user == record.user
  end

  def destroy?
    user == record.user
  end
end
