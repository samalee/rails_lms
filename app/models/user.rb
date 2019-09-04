class User < ApplicationRecord
  has_man :enrollments
  has_many :courses, through, :enrollment

  validates :first_name, :last_name, presence: true

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
