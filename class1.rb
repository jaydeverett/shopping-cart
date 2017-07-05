class Product


  def initialize(name, base_price)
    @name = name
    @base_price = base_price
    @tax_rate = 0.13
  end

  def product_total_price
    return @base_price *= (@tax_rate + 1)
  end



end
