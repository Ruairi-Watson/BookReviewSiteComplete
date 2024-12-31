module Custom
  class IsbnValidator
    # Validates 10 or 13 digit ISBN
    def self.valid?(isbn)
      isbn = isbn.delete('-').strip
      return false unless isbn.match?(/^\d{10}$|^\d{13}$/)

      isbn.length == 10 ? valid_isbn10?(isbn) : valid_isbn13?(isbn)
    end

    private

    def self.valid_isbn10?(isbn)
      sum = 0
      isbn.chars.each_with_index { |char, index| sum += (index + 1) * char.to_i }
      sum % 11 == 0
    end

    def self.valid_isbn13?(isbn)
      sum = 0
      isbn.chars.each_with_index { |char, index| sum += index.even? ? char.to_i : char.to_i * 3 }
      sum % 10 == 0
    end
  end
end
