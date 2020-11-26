module UsersHelper
  def total_items
    total = Item.where(author_id: current_user.id)
    total.each do |item|
      if item.groups.empty?
        total.delete(item)
      end
    end
    total.sum(:amount)
  end
end
