class Skill < ApplicationRecord
  include Placeholder
  after_initialize :set_defaults
  validates_presence_of :title, :percent
  validates :percent, numericality: { only_integer: true, :less_than 100 }

  def set_defaults
    self.main_img ||= Placeholder.generate_image(width: 100, height: 150)
  end

end
