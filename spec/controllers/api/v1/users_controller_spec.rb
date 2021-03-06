require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :controller do
	before(:each) {request.headers['Accept'] = "application/api.marketplace.v1"}
	let(:user) { FactoryGirl.create(:user) }

	describe 'GET #show' do
		before(:each) do
			get :show, params: {id: user.id}, format: :json
		end

		it "returns the information about a reporter on a hash" do
			user_response = JSON.parse(response.body, symbolize_names: true)
			expect(user_response[:email]).to eq user.email
		end

		it "responds with 200" do
			expect(response.status).to eq 200
		end
		
	end
end
