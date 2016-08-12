require 'rails_helper'

RSpec.feature "See shop items", type: :feature do
  before do
    create :item, name: '包丁', recommended: true
    create :item, name: 'フライパン'
  end

  scenario 'A user can see vairous items' do

    visit items_path

    expect(page).to have_text '包丁'
    expect(page).to have_text 'フライパン'
  end

  scenario 'Show recommended items' do
    visit recommended_items_path

    expect(page).to have_text '包丁'
    expect(page).not_to have_text 'フライパン'
  end
end
