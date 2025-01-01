books = [
  { title: "Neuromancer", author: "William Gibson", description: "The origin of the cyberpunk genre – hacking, AI, and the matrix before The Matrix.", isbn: "9780441569595" },
  { title: "Snow Crash", author: "Neal Stephenson", description: "A high-speed dive into virtual reality, corporate control, and katana-wielding hackers.", isbn: "9780553380958" },
  { title: "Altered Carbon", author: "Richard K. Morgan", description: "A brutal, noir-inspired world where consciousness can switch bodies at will.", isbn: "9780345457691" },
  { title: "The Peripheral", author: "William Gibson", description: "A mind-bending thriller exploring timelines, technology, and the power of the future.", isbn: "9780425276235" },
  { title: "Do Androids Dream of Electric Sheep?", author: "Philip K. Dick", description: "The foundation for Blade Runner – a haunting tale of AI, humanity, and identity.", isbn: "9780345404473" },
  { title: "The Diamond Age", author: "Neal Stephenson", description: "Nanotechnology drives society – a girl’s possession of a mysterious book reshapes the future.", isbn: "9780553380965" },
  { title: "Count Zero", author: "William Gibson", description: "Corporate warfare, cyber gods, and a mercenary caught between factions in cyberspace.", isbn: "9780441117734" },
  { title: "Mona Lisa Overdrive", author: "William Gibson", description: "The epic conclusion of the Sprawl trilogy – AI evolution and cybernetic mysteries.", isbn: "9780553281743" },
  { title: "Ghost in the Shell", author: "Masamune Shirow", description: "A cybernetic detective battles hackers in a future where the line between man and machine blurs.", isbn: "9781632364379" },
  { title: "When Gravity Fails", author: "George Alec Effinger", description: "A gritty cyberpunk story set in a Middle Eastern future full of modified minds and broken codes.", isbn: "9780765313582" }
]

books.each do |book_data|
  book = Book.find_or_initialize_by(title: book_data[:title])
  book.update(book_data)
end
