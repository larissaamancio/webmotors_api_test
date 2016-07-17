require 'rails_helper'

RSpec.describe ModelsController, type: :controller do
  context 'GET index' do
    let(:params) { { webmotors_make_id: 1 } }

    before do
      get :index, params
    end

    it 'renderiza a index' do
      expect(response).to render_template('index')
    end

    it 'escolhe o modelo' do
      expect(assigns(:models)).to eq(Model.where(make_id: params[:webmotors_make_id]))
    end
  end
end
