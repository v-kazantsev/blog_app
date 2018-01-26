module Placeholder
  extend ActiveSupport::Concern
  included do
    def self.image_generator(height:, width:)
      "http://via.placeholder.com/#{width}x#{height}"
    end
  end
end
