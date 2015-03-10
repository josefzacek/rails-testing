class Commentary < ActiveRecord::Base
  validates :position, uniqueness: true

  has_many :sections
end
