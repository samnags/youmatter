class UserDecorator < Draper::Decorator
  delegate_all

  def accomplishments_left
    object.available_accomplishments.map {|obj| obj.name }
  end

  

end
