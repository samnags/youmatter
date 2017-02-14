class AccomplishmentDecorator < Draper::Decorator
  delegate_all

  def created_at
    object.created_at.strftime("on %m/%d/%Y")
  end

  def add_more
    if object.name == "Added Elected Officials"
      h.link_to("Add more", "/new_elected")
    end
  end

  def present_tense
    case object.name
    when "Registered to vote"
      h.link_to("Register to vote", "/register", :class => "register") + " " + h.link_to("/ Find out where", "https://vote.gov/?1", :target => "_blank")

    when "Added Elected Officials"
      return h.link_to("Add elected officials", "/new_elected")
    when "Attended workshop"
      return h.link_to("Attend a workshop", "/", :class => "attend")
    end
  end

end
