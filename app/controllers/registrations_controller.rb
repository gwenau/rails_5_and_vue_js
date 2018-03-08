class RegistrationsController < Devise::RegistrationsController

  def create
    # do stuff here
    # super inherits the method constructed in the parent. And so we have access to @user
    super

  end

end