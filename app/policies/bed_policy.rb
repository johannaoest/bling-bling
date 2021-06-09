class BedPolicy < ApplicationPolicy
  def create?
    return true
  end

  def show?
    true
  end

  def update?
    user_owner_or_admin?
  end

  def destroy?
    user_owner_or_admin?
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end

  private

  def user_owner?
    record.user == user
  end

  def user_owner_or_admin?
    user_owner? || user.admin?
  end
end
