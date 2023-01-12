require 'rails_helper'

RSpec.describe "Carts", type: :request do
  describe "GET /index" do
    let!(:user) { create :user }
    let(:product) {create :product}
    let(:cart) { create :cart}
    let!(:items) { create :cart_items, cart: cart, product: product}

    describe 'get #show' do
      subject { get :show }
       it 'render show view' do
        is_expected.to render_template :show
        expect(responce.body).to include(product.title)  
       end
    end
  end
end
