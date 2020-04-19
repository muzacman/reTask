class Task < ApplicationRecord
  belongs_to :movement, optional:true

  enum task_type: [:instruction, :copyable, :url, :phone_num, :email, :appointment]

  VALID_NAME = /\A[a-zA-Z]+[a-zA-Z0-9\-\ \_]*\z/i
  validates :name, presence: true, length: {minimum: 5, maximum: 200},
            format: { with: VALID_NAME, message: 'name must contain only letters, numbers, hyphens, underscores, or spaces'}

  validates :text_build, presence: true, length: {maximum: 5000}

  VALID_URL = /\A(http:\/\/|https:\/\/|www.)?[a-zA-Z0-9?&=.\/:_-]+\z/i
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :link, allow_blank: true, length: {maximum: 2048}
            # format: { :with => VALID_URL || VALID_EMAIL_REGEX, message: 'link must be a valid url'}
end
