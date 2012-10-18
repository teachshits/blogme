class Ability
  include CanCan::Ability

  def initialize(user)

    user ||= User.new

    if user.persisted?
      can :manage, Post, :user_id => user.id

      can :manage, Comment, :user_id => user.id
    end

    can :read, Post

    can :read, Comment
  end
end
