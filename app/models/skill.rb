class Skill < ApplicationRecord
  include Placeholder
  after_initialize :set_defaults
  validates_presence_of :title, :percent
  validates :percent, numericality: { only_integer: true, :less_than_or_equal 100 }
  default_scope { order(created_at: :asc) }

  def set_defaults
    self.main_img ||= Placeholder.generate_image(width: 100, height: 150)
  end

end
