require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  context 'GET index' do
    it 'renderizar a index corretamente' do
      get :index
      expect(response).to render_template('index')
    end

    it 'escolhe a marca' do
      get :index
      expect(assigns(:makes)).to eq(Make.all)
    end
  end
end
