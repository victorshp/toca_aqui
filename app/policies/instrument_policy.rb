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
    is_owner? || user.admin
  end

  def destroy?
    (is_owner? || user.admin) && record.orders.count.zero?
  end

  private

  def is_owner?
    record.user == user
  end
end


