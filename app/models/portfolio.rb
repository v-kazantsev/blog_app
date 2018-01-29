class Portfolio < ApplicationRecord
  include Placeholder
  after_initialize :set_defaults
  validates_presence_of :title, :subtitle, :body

  def set_defaults
    self.main_img ||= Placeholder.generate_image(width: 600, height: 400)
    self.thumb_img ||= Placeholder.generate_image(width: 350, height: 200)
  end

end
