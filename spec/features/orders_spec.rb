# spec/features/orders_spec.rb
require 'rails_helper'

RSpec.feature "Order items", type: :feature do
  scenario 'A user can order 2 hochyo' do
    kitchenware = create(:category, name: '調理器具')
    create(:item, category: kitchenware, name: '包丁', price: 3_000)

    visit root_path

    click_on '調理器具'
    click_on '包丁'

    fill_in  '数量', with: '2'
    click_on 'カートに追加'

    expect(page).to have_content('ご注文ありがとうございました')
    expect(page).to have_content(%r!注文日時: \d{4}/\d{2}/\d{2} \d{2}:\d{2}!)

    expect(page).to have_css('.line_items td', text: '包丁')
  end
end

