require_relative 'class1.rb'

class Cart

  def initialize
    @products = []
  end

  def add_product(name, base_price, tax_rate = 0.13)
    product = Product.new(name, base_price, tax_rate = 0.13)
    @products << product
    return product
  end

  def self.delete_product(product)
    @products.delete(product)
  end

  def total_before_tax
    total = 0
    @products.each do |product|
      total  += product.base_price
    end
    puts "the total before tax is #{total}."
  end

  def total_after_tax
    total = 0
    @products.each do |product|
      total += product.product_total_price
    end
    puts "The total after tax is #{total}."
  end


end
my_cart = Cart.new

my_cart.add_product("celery", 10, 0.13)
my_cart.add_product("bread", 10)
my_cart.add_product("cheese", 10)
my_cart.add_product("sauce", 10)
my_cart.add_product("juice", 10)


puts my_cart.total_before_tax
puts my_cart.total_after_tax




# Cart.delete_product(product1)
