module Custom
  class IsbnValidator < ActiveModel::Validator
    def validate(record)
      unless valid_isbn?(record.isbn)
        record.errors.add(:isbn, "is not a valid ISBN")
      end
    end

    private

    def valid_isbn?(isbn)
      return false if isbn.blank?

      digits = isbn.gsub(/[^0-9X]/i, '').chars
      return false unless [10, 13].include?(digits.size)

      if digits.size == 10
        sum = digits.each_with_index.sum { |d, i| (d == 'X' ? 10 : d.to_i) * (10 - i) }
        sum % 11 == 0
      else
        sum = digits.each_with_index.sum { |d, i| i.even? ? d.to_i : d.to_i * 3 }
        sum % 10 == 0
      end
    end
  end
end
