require 'custom/isbn_validator'

class Book < ApplicationRecord
  validates_with Custom::IsbnValidator
end
