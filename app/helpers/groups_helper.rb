module GroupsHelper
  def no_items
    'There are no elements to show' if @e_items.empty?
  end
end
