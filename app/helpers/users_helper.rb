module UsersHelper
  def total_items
    total = 0
    @items.each do |i|
      total += i.amount
    end
    total
  end
end
