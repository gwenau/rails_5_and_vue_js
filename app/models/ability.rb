class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.role? :admin
      can :manage, :all
    elsif user.role? :member
      can :read, :all
      can :create, User
      can :update, User do |user_ability|
        user_ability.id == user.id
      end
      can :create, Event 
      can :update, Event do |event| 
            event.user == user
          end
      can :delete, Event do |event|
            event.try(:user) == user
            end
      can :create, Group
      can :update, Group do |group|
            group.user_id == user.id 
            end
      can :delete, Group do |group|
            group.try(:user) == user
            end
      can :create, Chat 
      can :update, Chat do |chat| 
            chat.user == user
          end
      can :delete, Chat do |chat|
            chat.try(:user) == user
            end
      can :create, Message 
      can :update, Message do |message| 
            message.user == user
          end
      can :delete, Message do |message|
            message.try(:user) == user
            end
    else
      can :read, :all
    end
  end
end