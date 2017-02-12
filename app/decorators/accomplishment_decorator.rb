class AccomplishmentDecorator < Draper::Decorator
  delegate_all

  def created_at
    byebug
    object.created_at.strftime("on %m/%d/%Y")
  end

end
