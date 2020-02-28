class InstrumentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true # Qualquer um pode criar um instrumento
  end

  def show?
    true
  end

  def update?
    record.user == user
  end
  
  def destroy?
    record.user == user
  end
end
