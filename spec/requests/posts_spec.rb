require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    before :each do
      get '/users/1/posts/'
    end

    it 'returns http success' do
      expect(response).to have_http_status(200)
    end

    it 'should render index' do
      expect(response).to render_template(:index)
    end

    it 'should include correct placeholder' do
      expect(response.body).to include('Post')
    end
  end

  describe 'GET /show' do
    before :each do
      get '/users/1/posts/1'
    end

    it 'return http success' do
      expect(response).to have_http_status(:success)
    end

    it 'sould render index' do
      expect(response).to render_template(:show)
    end

    it 'should return a correct placeholder ' do
      expect(response.body).to include('Comments:')
    end
  end
end
