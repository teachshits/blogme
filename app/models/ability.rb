class Ability
  include CanCan::Ability

  def initialize(user)

    user ||= User.new

    if user.persisted?
      can :manage, Post, :user_id => user.id
    end
  end
end
