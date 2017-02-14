class UserElectedsController < ApplicationController

  def new
    @user_elected = UserElected.new
  end

  def create
    @user_elected = current_user.user_electeds.build
    if @user_elected.update(user_elected_params)
      current_user.accomplishments << Accomplishment.find_by(name: "Added Elected Officials")
      current_user.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  private

  def user_elected_params
    params.require(:user_elected).permit(:elected_id, :first_name, :last_name, :party)
  end

end
