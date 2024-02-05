require 'rails_helper'

RSpec.describe 'Dashboards' do
  describe 'GET /show' do
    it 'returns http success' do
      get '/dashboard/show'
      expect(response).to have_http_status(:success)
    end
  end
end
