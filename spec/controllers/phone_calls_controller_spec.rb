require 'rails_helper'

RSpec.describe PhoneCallsController, type: :controller do
  let(:phone_call) { create(:phone_call) }

  describe "GET #show" do
    it "returns http success" do
      get :show, params: { id: phone_call.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit, params: { id: phone_call.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

end