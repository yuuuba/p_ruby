# ショッピングカート
class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

class Cart
  def initialize
    @cart = []
  end

  def add_product(product)
    @cart <<  product
  end

  def total_price
    # sum_price = []
    # @cart.each do |product|
    #   sum_price << product.price
    # end
    # sum_price.sum
    @cart.sum { |product| product.price }
  end

  def remove_product(product)
    @cart.delete_if { |obj| obj.eql?(product) }
  end
end

class Solver
  def solve
    cart = Cart.new
    product1 = Product.new('Apple', 100)
    product2 = Product.new('Banana', 50)
    cart.add_product(product1)
    cart.add_product(product2)

    # cart.total_price
    # binding.irb # コードをコピペ: cart.total_price
  end
end

puts Solver.new.solve
