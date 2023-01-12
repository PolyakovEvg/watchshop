# # frozen_string_literal: true

# require 'rails_helper'

# RSpec.describe SearchController, type: :controller do
#   render_views
#   describe 'GET #index' do
#     let! (:product) {create :product, title: 'Lorem'}
#     let (:query) { 'lor' }
#     subject! {get :index, params: {query: query, format: JSON}}
#     context "search product" do
#         it 'find product in db' do
#             result = JSON.parse(response.body).first.values
#             expect(result).to contain_exactly(product.title, product.id)  
#         end

#         it 'responce with 200 ok' do
#             expect(response.code).to eq('200')
#         end

#         context "search with wrong value" do
#             let(:query) { 'wrong'}
#             it 'nothing found' do
#                 expect response.body.empty?
#             end
#         end
        
        
#     end
    
#   end
  
# end
