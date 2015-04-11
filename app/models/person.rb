class Person < ActiveRecord::Base
  def full_name
    if name && surname
      "#{name} #{surname}"
    else
      'name or surname is missing'
    end
  end

  def describe
    full_name + " is #{age} old"
  end
end
