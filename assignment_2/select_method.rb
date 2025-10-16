books = [
{ title: "The Fellowship of the Ring", year: 1954 },
{ title: "Harry Potter and the Sorcerer's Stone", year: 1997 },
{ title: "American Gods", year: 2001 },
{ title: "The Da Vinci Code", year: 2003 },
{ title: "Twilight", year: 2005 },
{ title: "The Road", year: 2006 },
{ title: "Nineteen Eighty-Four", year: 1949 }
]

books_pulished_after_2000 = books.select{|book| book[:year] > 2000}

books_pulished_after_2000.each do |book|
  puts "#{book[:title]}, #{book[:year]}"
end



