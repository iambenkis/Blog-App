require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    before :each do
      get '/users'
    end
    it 'is a success' do
      expect(response).to have_http_status(:success)
    end

    it 'should render index ' do
      expect(response).to render_template(:index)
    end

    it 'should return the correct placeholder' do
      expect(response.body).to include('Post')
    end
  end

  describe 'GET /show' do
    before :each do
      get '/users/1'
    end

    it 'is a success' do
      expect(response).to have_http_status(200)
    end

    it 'should render show' do
      expect(
        response.body
      ).to include('Post #')
    end
  end
end
