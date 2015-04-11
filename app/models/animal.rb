class Animal < ActiveRecord::Base
  def self.animal_description
    first_record = Animal.first
    if first_record.nil?
      'no animal in database'
    else
      "#{first_record.name} / #{first_record.weight}
       / #{first_record.weight * first_record.price}"
    end
  end
end
