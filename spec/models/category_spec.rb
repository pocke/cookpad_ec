require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'validate with name precense' do
    subject{create :category, name: name}
    context 'when name is blank' do
      let(:name){''}
      it do
        expect{subject}.to raise_error ActiveRecord::RecordInvalid
      end
    end
  end

  describe 'has_many :item, learning test' do
    let(:category) { create(:category, name: '調理器具') }

    before do
      category.items.create!(name: '包丁', recommended: true)
      category.items.create!(name: 'フライパン')
    end

    specify {
      expect(category.items.map(&:name)).to match_array(['包丁', 'フライパン'])
    }
    specify { expect(category.items.first.category).to eq(category) }
  end
end
