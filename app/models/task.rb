class Task < ApplicationRecord
  has_many :projects
  validates :description, :status, presence: true, length: { maximum: 255,
                                                            too_long: '%{count} characters is the maximum allowed' }
end
