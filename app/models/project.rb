class Project < ApplicationRecord
  belongs_to :user
  has_many :users
  validates :name, presence: true, length: { maximum: 255,
                                             too_long: '%{count} characters is the maximum allowed' }
end
