class UserAccomplishmentsController < ApplicationController

  def new
    @ua = UserAccomplishment.new
    @accomplishments = Accomplishment.all
  end

  def create
    byebug

    @ua = current_user.build_user_accomplishment
    # current_user.build_user_accomplishment(accomplishment_params)


  end

  private

    def accomplishment_params
      params.require(:user_accomplishment).permit(:attended_workshop, :registered)
    end

end

# <%= f.radio_button :attended_workshop, true, checked: false %>
# <%= label_tag(:attended_workshop, "Yes") %><br />
# <%= f.radio_button :attended_workshop, false, checked: false %>
# <%= label_tag(:attended_workshop, "No") %><br /><br />
#
# <%= f.label :registered, "Are you registered to vote?" %><br />
# <%= f.radio_button :registered, true, checked: false %>
# <%= label_tag(:registered, "Yes") %><br />
# <%= f.radio_button :registered, false, checked: false %>
# <%= label_tag(:registered, "No") %><br />

# <h3>Have you attended a workshop?</h3><br />
# <%= form_for @ua do |f| %>
#   <% @accomplishments.each do |acc| %>
#       <%= label_tag acc.id, acc.name %><br>
#       <%= check_box_tag acc.name, acc.id %><br>
#   <% end %>
#
#
#   <%= f.submit "Add accomplishment" %>
# <% end %>
