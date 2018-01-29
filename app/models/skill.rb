class Skill < ApplicationRecord
  include Placeholder
  after_initialize :set_defaults
  validates_presence_of :title, :percent
  validates :percent, numericality: { only_integer: true, less_than_or_equal_to: 100 }
  default_scope { order(created_at: :asc) }

  def set_defaults
    self.badge ||= Placeholder.image_generator(width: 81, height: 100)
  end

end
