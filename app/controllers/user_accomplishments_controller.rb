class UserAccomplishmentsController < ApplicationController

  def new
    @accomplishment = UserAccomplishment.new
  end

  def create
    @accomplishment = current_user.build_user_accomplishment(accomplishment_params)
    byebug

  end

  private

    def accomplishment_params
      params.require(:user_accomplishment).permit(:attended_workshop, :registered)
    end

end
