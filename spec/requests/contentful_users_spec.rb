require 'rails_helper'

RSpec.describe "ContentfulUsers", type: :request do
  describe "GET /contentful_users" do
    it "works! (now write some real specs)" do
      get contentful_users_path
      expect(response).to have_http_status(200)
    end
  end
end
