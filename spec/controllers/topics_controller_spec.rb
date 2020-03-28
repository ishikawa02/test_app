require 'rails_helper'
RSpec.describe TopicsController, type: :controller do
    describe '新規スレッドページ' do
      context "新規スレッドページが正しく表示される" do
        before do
          get :new
        end
        it 'リクエストは200 OKとなること' do
          expect(response.status).to eq 200
        end
      end
    end
end