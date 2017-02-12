# Require gems
require 'sqlite3'
require 'faker'

# Make database
db = SQLite3::Database.new("library.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS library (
  	id INTEGER PRIMARY KEY,
  	name VARCHAR(255),
  	author VARCHAR(255),
  	checked_out BOOLEAN
  )
SQL

# Make db table for library
db.execute(create_table_cmd)

# Method to add books into library
def add_book(db, name, author)
  db.execute("INSERT INTO library (name, author, checked_out) VALUES (?, ?, ?)", [name, author, 'false'])
end

# Method to delete books from library
def delete_book(db, name)
  db.execute("DELETE FROM library WHERE name=?", [name])
end

# Method to check out a book from the library
def checkout_book(db, name)
  db.execute("UPDATE library SET checked_out=? WHERE name=?", ['true', name])
end

# Method to display all books in library
def display_books(db)
  lib = db.execute("SELECT * from library")
  lib.each do |book|
  	puts "Title: #{book['name']}, Author: #{book['author']}, Checked Out: #{book['checked_out']}"
  end
end 

# Add a few books to the library to start with
add_book(db, "Anna Karenina", "Leo Tolstoy")
add_book(db, "The Adventures of Huckleberry Finn", "Mark Twain")
add_book(db, "Moby Dick", "Herman Melville")
add_book(db, "Harry Potter and the Sorcerer's Stone", "J.K. Rowling")

# Driver code
puts "Welcome to the library! Type 'add' to add a book, 'checkout' to check out a book,'view' to view books in the library,'delete' if you want to remove a book from the library, or 'exit'."
while response = gets.chomp.to_s
puts "Welcome to the library! Type 'add' to add a book, 'checkout' to check out a book,'view' to view books in the library,'delete' if you want to remove a book from the library, or 'exit'."
  if response == "add"
	puts "Name of book to add:"
	name = gets.chomp.to_s
	puts "Author of book to add:"
	author = gets.chomp.to_s
	add_book(db, name, author)
  elsif response == "checkout"
	puts "Name of book to check out:"
	name = gets.chomp.to_s
	checkout_book(db, name)
  elsif response == "view"
	display_books(db)
  elsif response == "delete"
	puts "Name of book to delete:"
	name = gets.chomp.to_s
	delete_book(db, name)
  elsif response == "exit"
  	puts "Goodbye!"
  	break
  end
end
