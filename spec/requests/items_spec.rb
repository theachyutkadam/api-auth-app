require 'rails_helper'

RSpec.describe 'Items', type: :request do
	# include_context "jwt"
	let(:user) { create(:user) }
	before do
		post '/authenticate', params: { authenticate: { email: user.email, password: user.password } }
	end

  describe 'GET /index' do
    it 'returns http success' do
      item = create(:item)
      get '/items/'
      expect(response).to have_http_status(:success)
    end
  end

  # describe 'GET /new' do
  #   it 'returns http success' do
  #     # user = create(:user)
  #     # post '/authenticate', params: { authenticate: { email: user.email, password: user.password } }
  #     item = create(:item)
  #     get '/items/new'
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe 'GET /edit' do
  #   it 'returns http success' do
  #     # user = create(:user)
  #     # post '/authenticate', params: { authenticate: { email: user.email, password: user.password } }
  #     item = create(:item)
  #     get "/items/#{item.id}/edit"
  #     expect(response).to have_http_status(:success)
  #   end
  # end
end
