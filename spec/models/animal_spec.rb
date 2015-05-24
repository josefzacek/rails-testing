require 'rails_helper'

RSpec.describe Animal do
  describe '.add' do
    context 'given empty string' do
      it 'returns zero' do
        expect(Animal.add('')).to eql()
      end
    end
  end
end
