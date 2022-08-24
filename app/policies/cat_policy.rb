class CatPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    true
  end

  def create?
    true
  end

  def show?
    true
  end

  def update?
    user == record.user
    # user => current_user, record => @cat (argument passed to 'authorize')
  end

  def destroy?
    user == record.user
  end
end
