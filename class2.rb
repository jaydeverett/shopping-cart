require './class1.rb'

class Cart

    @@products = []

  def initialize

  end

  def self.add_product(name, base_price)
    @@products << Product.new(name, base_price)
    return @@products.last
  end

  def self.delete_product(product)
    @@products.delete(product)
  end

  def self.total_cart_price
    @@products.each do #NEED HELP
    end
  end











end
product1= Cart.add_product("celery", 10)
Cart.delete_product(product1)
