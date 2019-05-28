class Todo < ApplicationRecord
  has_many :comments
  belongs_to :user

  validates :user, presence: true
  validates :title, presence: { message: "don't forget your title" }
  validates :task, presence: { message: "please provide a task" }
end
