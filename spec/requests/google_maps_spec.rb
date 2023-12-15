require 'rails_helper'

RSpec.describe "GoogleMaps", type: :request do
  let!(:finland) { create(:test_category, title: "フィンランド") }

  describe "GET /google_maps" do
    it "is displayed" do
      get categories_path
      expect(response).to have_http_status(200)
    end
  end
end
