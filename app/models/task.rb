class Task < ApplicationRecord
  belongs_to :project
  validates :deadline, :description, :status, presence: true
end