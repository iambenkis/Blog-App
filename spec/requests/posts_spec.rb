require 'rails_helper'

RSpec.describe 'Posts', type: :controller do
  describe 'GET index' do
    it "is a success" do
      expect(response).to have_http_status(:ok)
    end
  end
end
