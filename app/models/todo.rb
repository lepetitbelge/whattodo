class Todo < ApplicationRecord
  has_many :comments
  belongs_to :user

  validates :user, presence: true
  validates :task, presence: { message: "please provide a task" }
end
