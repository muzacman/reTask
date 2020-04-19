class Revolution < ApplicationRecord
  belongs_to :movement, optional: true

  enum status: [:incomplete, :complete]

end
