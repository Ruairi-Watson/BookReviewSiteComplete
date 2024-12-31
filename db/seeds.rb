books = [
  { title: "Neuromancer", author: "William Gibson", description: "Classic cyberpunk novel.", isbn: "9780441569595" },
  { title: "Snow Crash", author: "Neal Stephenson", description: "Fast-paced cyberpunk novel.", isbn: "9780553380958" },
  { title: "Altered Carbon", author: "Richard K. Morgan", description: "Cyberpunk noir detective story.", isbn: "9780345457691" },
  { title: "The Peripheral", author: "William Gibson", description: "A thriller about technology's impact on society.", isbn: "9780425276235" },
  { title: "Do Androids Dream of Electric Sheep?", author: "Philip K. Dick", description: "Inspiration for Blade Runner.", isbn: "9780345404473" },
  { title: "The Diamond Age", author: "Neal Stephenson", description: "Nanotech and futuristic society.", isbn: "9780553380965" },
  { title: "Count Zero", author: "William Gibson", description: "Sprawl trilogy sequel.", isbn: "9780441117734" },
  { title: "Mona Lisa Overdrive", author: "William Gibson", description: "Final Sprawl trilogy novel.", isbn: "9780553281743" },
  { title: "Ghost in the Shell", author: "Masamune Shirow", description: "Cyberpunk manga classic.", isbn: "9781632364379" },
  { title: "When Gravity Fails", author: "George Alec Effinger", description: "Cyberpunk in a futuristic Middle East.", isbn: "9780765313582" }
]

books.each do |book_data|
  book = Book.find_or_initialize_by(title: book_data[:title])
  book.update(book_data)  # This updates existing records
end
