class UserAccomplishmentsController < ApplicationController

  # def index
  # end

  def new
    @ua = UserAccomplishment.new
    @accomplishments = Accomplishment.all
  end

  def create
    @ua = current_user.build_user_accomplishment
    byebug
    # current_user.build_user_accomplishment(accomplishment_params)
  end

  def register
    ua = UserAccomplishment.create(user: current_user, accomplishment: Accomplishment.find_by(name: "Registered to vote"))
    if ua.save
      redirect_to user_path(current_user)
    end
  end

  def attend_event
    byebug
    ua = UserAccomplishment.create(user: current_user, accomplishment: Accomplishment.find_by(name: "Attended workshop"))
    if ua.save
      redirect_to user_path(current_user)
    end
  end

  private

    def accomplishment_params
      params.require(:user_accomplishment).permit(:attended_workshop, :registered)
    end

end
