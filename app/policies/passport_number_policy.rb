class PassportNumberPolicy < ApplicationPolicy
  def show?
    rand(100) > 50
  end
end
