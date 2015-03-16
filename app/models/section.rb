class Section < ActiveRecord::Base
  validate :unique_position_for_section
  validates :title, :position, :content, :commentary_id, presence: true
  belongs_to :commentary

  private

  def unique_position_for_section
    taken_positions = Section.where(commentary_id: commentary_id).pluck(:position)
    if taken_positions.include?(position)
      errors.add(:position, "#{position} has already been taken")
    end
  end
end
