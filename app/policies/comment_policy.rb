class CommentPolicy < ApplicationPolicy
  def create?
    user&.id
  end
end
