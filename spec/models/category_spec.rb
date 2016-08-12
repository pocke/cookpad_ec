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
end
