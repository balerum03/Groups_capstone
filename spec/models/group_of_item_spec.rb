require 'rails_helper'

RSpec.describe GroupOfItem, type: :model do
  User.delete_all
  Group.delete_all
  Item.delete_all
  let!(:test_user) { User.create(user_name: 'test_user1') }
  let!(:test_group) { Group.create(name: 'test_group', user_id: test_user.id) }
  let!(:test_item) { Item.create(author_id: test_user.id, name: 'test_item', amount: 12) }
  let!(:test_relation) { GroupOfItem.create(item_id: test_item.id, group_id: test_group.id) }
  let!(:test_relation1) { GroupOfItem.create(item_id: test_item.id, group_id: nil) }

  it 'Does create the relation if item_id and group_id are given' do
    expect(test_relation).to be_valid
  end

  it 'The relation is not created if params are missing' do
    expect(test_relation1).to be_invalid
  end
end
