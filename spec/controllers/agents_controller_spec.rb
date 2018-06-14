require 'rails_helper'

RSpec.describe AgentsController, type: :controller do
  let(:agent) { create(:agent) }

  describe "GET #show" do
    it "returns http success" do
      get :show, params: { id: agent.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit, params: { id: agent.id }
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
