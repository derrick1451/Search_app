require 'rails_helper'
RSpec.describe "Searches", type: :request do
    describe "GET /searches" do
        before { get '/searches' }
        it "should return success response" do
            get "/searches"
            expect(response).to have_http_status(200)
        end
        it 'renders the correct template' do
            expect(response).to render_template('searches/index')
          end
    end
end