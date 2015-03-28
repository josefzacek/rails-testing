class Commentary < ActiveRecord::Base
  validates :position, uniqueness: true
  validates :title, :position, :slug, presence: true
  has_many :sections

  def to_param
    slug
  end
end
