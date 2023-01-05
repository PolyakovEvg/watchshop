require 'rails_helper'

RSpec.describe MainController, type: :controller do
    describe 'GET #index'
    let(:brands) {create_list :brand, 3}
    let(:hits) {create_list :product, 8}

    before {get :index}

    context 'required output per page'
    it 'render template' do
        is_expected.to render_template :index
    end
    it 'instance variable brands includes only brands' do
        expect(assigns(:brands)).to match_array(brands)
    end
    it 'instance variable hits includes only hits' do
        expect(assigns(:hits)).to match_array(hits)
    end
    


end