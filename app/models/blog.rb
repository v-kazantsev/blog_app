class Blog < ApplicationRecord
  validates_presence_of :title, :source, :body
  default_scope { order(created_at: :desc) }
  scope :months_ago, -> (months) { where(created_at: months.month.ago..(months-1).month.ago) }
end
