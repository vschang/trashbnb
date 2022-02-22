class ReceptaclePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def show?
    true  # Anyone can view a receptacle
  end

  def create?
    true  # Anyone can create a receptacle
  end

  def update?
    record.user == user  # Only receptacle creator can update it
  end

  def destroy?
    record.user == user  # Only receptacle creator can update it
  end
end
