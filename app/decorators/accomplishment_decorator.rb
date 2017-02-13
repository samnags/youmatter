class AccomplishmentDecorator < Draper::Decorator
  delegate_all

  def created_at    
    object.created_at.strftime("on %m/%d/%Y")
  end

end
