class AccomplishmentDecorator < Draper::Decorator
  delegate_all

  def created_at
    object.created_at.strftime("on %m/%d/%Y")
  end

  def present_tense
    case object.name
    when "Registered to vote"
      return h.link_to("Register to vote", "https://vote.gov/?1", :target => "_blank")
    when "Added Elected Officials"
      return h.link_to("Add elected officials", "/new_elected")
    when "Attended workshop"
      return "Attend a workshop"
    end
  end

end
