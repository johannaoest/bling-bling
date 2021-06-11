class ReviewPolicy < ApplicationPolicy
  def create?
    return !user_owner?
  end

  def user_owner?
    record.bed.user == user
  end
end
