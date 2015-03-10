class Section < ActiveRecord::Base
  validates :position, uniqueness: true
  belongs_to :commentary
end
