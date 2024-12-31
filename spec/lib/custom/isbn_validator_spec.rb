require 'custom/isbn_validator'

RSpec.describe Custom::IsbnValidator do
  describe '.valid?' do
    it 'returns true for valid 10-digit ISBN' do
      expect(Custom::IsbnValidator.valid?('0471958697')).to eq(true)
    end

    it 'returns false for invalid 10-digit ISBN' do
      expect(Custom::IsbnValidator.valid?('0471958698')).to eq(false)
    end

    it 'returns true for valid 13-digit ISBN' do
      expect(Custom::IsbnValidator.valid?('9780306406157')).to eq(true)
    end

    it 'returns false for invalid 13-digit ISBN' do
      expect(Custom::IsbnValidator.valid?('9780306406158')).to eq(false)
    end
  end
end
