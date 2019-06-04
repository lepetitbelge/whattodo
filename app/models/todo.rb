class Todo < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user

  validates :user, presence: true
  validates :task, presence: { message: "please provide a task" }
  validate :deadline_cannot_be_in_past

  def done?
    done
  end

  private

  def deadline_cannot_be_in_past
    return unless deadline

    errors.add(:deadline, "can't be in the past") if DateTime.current > (deadline + 1.day)
  end
end
