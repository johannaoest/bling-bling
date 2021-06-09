class BookingPolicy < ApplicationPolicy
  def create?
    user != record.bed.user
  end

  def show?
    user_allowed_or_admin?
  end

  def destroy?
    user_allowed_or_admin?
  end

  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  private

  def user_allowed?
    user == record.user || user == record.bed.user
  end

  def user_allowed_or_admin?
    user_allowed? || user.admin
  end
end
