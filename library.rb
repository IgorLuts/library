require_relative 'author'
require_relative 'reader'
require_relative 'book'
require_relative 'order'
require 'yaml'

class Library
  attr_accessor :readers, :books, :orders, :authors

  def initialize
    @readers = []
    @books = []
    @orders = []
    @authors = []
  end

  def add_author(author)
    return unless author.is_a?(Author)
    check_author_name = authors.map(&:name).include?(author.name)
    return 'This author is already in the library' if check_author_name
    authors.push(author)
  end

  def add_book(book)
    return unless book.is_a?(Book)
    check_book = books.map(&:name).include?(book.name)
    check_author = books.map(&:author).include?(book.author)
    return 'This book is already in the library' if check_book && check_author
    books.push(book)
  end

  def add_reader(reader)
    return unless reader.is_a?(Reader)
    check_reader = readers.map(&:name).include?(reader.name)
    return 'This reader is already Registered' if check_reader
    readers.push(reader)
  end

  def add_order(order)
    return unless order.is_a?(Order)
    check_book_order = books.map(&:name).include?(order.book)
    return 'This book is not in the library' unless check_book_order
    orders.push(order)
  end

  def most_reading_person
    orders.group_by(&:reader).max_by { |_k, v| v.size }.first
  end

  def most_popular_book
    orders.group_by(&:book).max_by { |_k, v| v.size }.first
  end

  def three_popular_book
    books_in_trand = orders.group_by(&:book)
    books_in_trand.transform_values(&:size).uniq.sort_by { |_k, v| v }.reverse[0, 3]
  end

  def load_data
    YAML.load(File.read('./data.yml'))
  end

  def save_data_to_file
    File.open('./data.yml', 'w').write(YAML.dump(self))
    puts 'Complete'
  end
end
