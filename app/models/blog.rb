class Blog < ApplicationRecord
  validates_presence_of :title, :source, :body
  default_scope { order(created_at: :desc) }
end
