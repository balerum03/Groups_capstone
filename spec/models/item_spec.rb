require 'rails_helper'

RSpec.describe Item, type: :model do
  User.delete_all
  Item.delete_all
  let!(:test_user) { User.create(user_name: 'test_user1') }
  let!(:test_item) { Item.create(author_id: test_user.id, name: 'test_item', amount: 12) }
  let!(:test_item1) { Item.create(name: 'test_item1', amount: 13) }

  it 'Does create the item when all params are given' do
    expect(test_item).to be_valid
  end

  it 'Does not create item if author_id does not exist' do
    expect(test_item1).to be_invalid
  end
end
