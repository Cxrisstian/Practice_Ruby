class Item
  attr_reader :item_name
  attr_writer :item_name

  def initialize(quantity)
    @quantity = quantity
  end

end

item = Item.new(1)
puts item.item_name = "radio"
