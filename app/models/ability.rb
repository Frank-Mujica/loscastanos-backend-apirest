# frozen_string_literal: true

class Ability
include CanCan::Ability
  def initialize(user)
    user ||= User.new 
    if user.admin?
      can :manage, Lupulo
      can :manage, User
    else
      can :read, Lupulo
      can [:read, :update, :destroy], User, :user_id => user.id
    end
  end
end
