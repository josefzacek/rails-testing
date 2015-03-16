class Commentary < ActiveRecord::Base
  validates :position, uniqueness: true
  validates :title, :position, presence: true
  has_many :sections
end
