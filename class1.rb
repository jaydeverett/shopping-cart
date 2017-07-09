class Product

  attr_accessor :name, :base_price, :tax_rate

  def initialize(name, base_price, tax_rate = 0.13)
    @name = name
    @base_price = base_price
    @tax_rate = tax_rate
  end

  def product_total_price
    total = @base_price * (@tax_rate + 1)
    return total
  end



end
