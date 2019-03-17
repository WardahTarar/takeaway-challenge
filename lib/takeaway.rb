require 'order'

class Takeaway
  def initialize(menu:, order: nil)
    @menu = menu
    @order = order || Order.new
end

  def place_order(dishes)
    dishes.each do |dish,quantity|
      @order.add(dish,quantity) 
    end
    @order.total
  end

end
