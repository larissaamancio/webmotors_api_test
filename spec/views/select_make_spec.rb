require 'rails_helper'

RSpec.describe 'seleciona marca', type: :feature do
  before { visit home_path }

  scenario 'quando acessar home_path' do
    expect(page).to have_css('label', text: 'Escolha a Fabricante:')
    expect(page).to have_button('Buscar modelos')
  end
end
