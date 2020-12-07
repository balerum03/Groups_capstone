require 'rails_helper'

RSpec.describe UsersController, type: :routing do
  describe 'routing' do
    it 'routes to #new' do
      expect(get: '/users/new').to route_to('users#new')
    end

    it 'routes to #create' do
      expect(post: '/users').to route_to('users#create')
    end

    it 'routes to #my_items' do
      expect(get: '/users/1/my_items').to route_to('users#my_items', id: '1')
    end

    it 'routes to #my_external_items' do
      expect(get: '/users/1/my_external_items').to route_to('users#my_external_items', id: '1')
    end
  end
end
