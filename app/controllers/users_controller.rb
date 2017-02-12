class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @user.id
      add_initial_accomplishments
      redirect_to @user
    else
      render :new
    end

  end

  def show
    @user = User.find(params[:id])
    @accomplishments = AccomplishmentDecorator.decorate_collection(@user.accomplishments)
  end


  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :password, :password_confirmation, :phone, :zipcode)
  end

  def accomplishment_params
    params.permit(:workshop, :registered)
  end

  def add_initial_accomplishments
    if !!accomplishment_params[:workshop]
      byebug
      UserAccomplishment.create(accomplishment: Accomplishment.find_by(name: "Attended workshop"), user: current_user)
    end
    if !!accomplishment_params[:registered]
      byebug
      UserAccomplishment.create(accomplishment: Accomplishment.find_by(name: "Registered to vote"), user: current_user)
    end
  end

end
