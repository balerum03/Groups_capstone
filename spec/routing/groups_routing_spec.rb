require 'rails_helper'

RSpec.describe GroupsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/groups').to route_to('groups#index')
    end

    it 'routes to #new' do
      expect(get: '/groups/new').to route_to('groups#new')
    end

    it 'routes to #create' do
      expect(post: '/groups').to route_to('groups#create')
    end

    it 'route to #group_items' do
      expect(get: 'groups/1/group_items').to route_to('groups#group_items', id: '1')
    end
  end
end
