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
      expect(response.body).to include("Here is a list of ALL Users, you are in '/' or '/users'")
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
      ).to include("Here is a single User for a given user you are in '/users/user_id' starting by 1")
    end
  end
end
