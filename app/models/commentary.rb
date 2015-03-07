class Commentary < ActiveRecord::Base
  validates :position, uniqueness: true
end
