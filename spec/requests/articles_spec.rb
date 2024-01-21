require 'rails_helper'
RSpec.describe "Articles", type: :request do
    describe "GET /articles" do
        before { get '/articles' }
        it "should return success response" do
            get "/articles"
            expect(response).to have_http_status(200)
        end
        it 'renders the correct template' do
            expect(response).to render_template('articles/index')
          end
    end

end