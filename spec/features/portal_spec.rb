require 'rails_helper'

RSpec.feature 'See shop categories', type: :feature do
  scenario 'Listing categories' do
    create :category, name: '調理器具'
    create :category, name: '食器'

    visit root_path

    expect(page).to have_text '調理器具'
    expect(page).to have_text '食器'
  end
end
