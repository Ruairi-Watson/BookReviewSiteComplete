module Custom
  class TitleFormatter
    def self.format(title)
      title.split.map(&:capitalize).join(' ')
    end
  end
end
