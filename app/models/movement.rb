class Movement < ApplicationRecord
  has_many :tasks

  VALID_NAME = /\A[a-zA-Z]+[a-zA-Z0-9\-\ \_]*\z/i
  validates :name, presence: true, length: {minimum: 5, maximum: 200},
            uniqueness: { case_sensitive: false },
            format: { with: VALID_NAME, message: 'name must contain only letters, numbers, hyphens, underscores, or spaces'}

  validates :description, allow_blank: true, length: {maximum: 1000}
  validates :repeater_names, allow_blank: true, length: {maximum: 1000}
end
