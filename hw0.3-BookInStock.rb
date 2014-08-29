class BookInStock
  def initialize(isbn,price)
    @isbn=isbn
    @price=price
    if price<=0 or isbn.length<=0
      raise ArgumentError
    end
  end
  def isbn()
    @isbn
  end
  def isbn=(isbn)
    @isbn=isbn
  end
  def price()
    @price
  end
  def price=(price)
    @price=price
  end
  def price_as_string()
    "$%.2f" % @price
  end

end

