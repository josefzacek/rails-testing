class Person < ActiveRecord::Base
  def full_name
    name + ' ' + surname
  end

  def describe
    full_name + " is #{age} old"
  end
end
