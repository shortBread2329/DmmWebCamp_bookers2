class BookComment < ApplicationRecord
  belongs_to :book
  belongs_to :user
  validates :comment, presence: true
  # 空のコメントを無効に
end
