require 'rails_helper'

RSpec.describe ItemsController, type: :routing do
  describe 'routing' do
    it 'routes to #new' do
      expect(get: '/items/new').to route_to('items#new')
    end

    it 'routes to #create' do
      expect(post: '/items').to route_to('items#create')
    end
  end
end
