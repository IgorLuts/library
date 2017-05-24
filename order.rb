class Order
  attr_accessor :reader, :book, :date

  def initialize(reader, book, date = Time.now)
    @reader = reader
    @book = book
    @date = date
  end
end
