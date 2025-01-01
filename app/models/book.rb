require 'isbn/tools'

class Book < ApplicationRecord
  # Validations
  validates :title, presence: true
  validates :author, presence: true
  validates :isbn, presence: true, uniqueness: true
  validate :valid_isbn_format

  # Custom ISBN validation method
  private

  def valid_isbn_format
    unless ISBN_Tools.is_valid?(isbn)
      errors.add(:isbn, "is not a valid ISBN")
    end
  end
end
