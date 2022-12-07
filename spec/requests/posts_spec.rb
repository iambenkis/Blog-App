require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    before :each do
      get '/users/:user_id/posts/'
    end

    it 'returns http success' do
      expect(response).to have_http_status(200)
    end

    it 'should render index' do
      expect(response).to render_template(:index)
    end

    it 'should include correct placeholder' do
      expect(response.body).to include("Here are ALL Posts for a given user you are in '/users/user_id/posts'")
    end
  end
end

# RSpec.describe PostsController, type: :controller do
#   describe "GET posts#index" do

#   end
# end
