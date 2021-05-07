class Favorite < ApplicationRecord
  belongs_to :book
  belongs_to :user

  validates_uniqueness_of :book_id, scope: :user_id
  # book_idとuser_idの一意性チェック
end
