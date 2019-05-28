class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :todo

  validates_presence_of :user, :todo
  validates :content, presence: { message: "can't be blank" }
end
