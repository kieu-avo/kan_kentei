require 'rails_helper'

RSpec.describe "LineMessagings", type: :request do
  describe "GET /line_messagings" do
    it "is displyed" do
      get login_path
      expect(response).to have_http_status(200)
    end
  end
end
