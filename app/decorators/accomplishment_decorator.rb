class AccomplishmentDecorator < Draper::Decorator
  delegate_all

  def created_at
    object.created_at.strftime("on %m/%d/%Y")
  end

  def present_tense
    case object.name
    when "Registered to vote"
      return "Register to vote"
    when "Added Elected Officials"
      return "Add elected officials"
    when "Attended workshop"
      return "Attend a workshop"
    end
  end

end
