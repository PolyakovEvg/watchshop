# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Carts', type: :request do
  describe 'GET /index' do
    let!(:user) { create :user }
    let(:product) { create :product }
    let(:cart) { create :cart }
    let!(:items) { create :cart_items, cart:, product: }
  end

  describe 'get #show' do
    subject { get :show }
    it 'render show view' do
      sign_in(user)
      is_expected.to render_template :show
      expect(responce.body).to include(product.title)
    end
  end

  describe 'DELETE #destroy' do
    subject { delete :destroy }
    context 'delete from cart' do
      it 'delete product from cart' do
        sign_in(user)
        expect(subject).to change { user.reload.cart.present? }.to(false)
      end

      it 'render view show after delstroy' do
        sign_in(user)
        is_expected.to render_template :show
      end
    end
  end
end
