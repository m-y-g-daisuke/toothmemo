require 'rails_helper'

RSpec.describe Post, type: :model do
  let!(:animal){create(:animal)}
  describe 'as validation' do
    context 'is valid' do
    let(:post){build(:post)}
    it 'with recorded_at' do
      expect(post).to be_valid
    end
  end
  context 'invalid' do
    let(:post){build(:post,recorded_at:nil)}
      it 'without recorded_at' do
        expect(post).to be_invalid
      end
    end
  end
  describe 'as association' do
    let(:association) { described_class.reflect_on_association(target) }

    context 'belongs to' do
      let(:target) { :animal }
      it 'Animal' do
        expect(association.macro).to eq :belongs_to
      end
    end
  end
end
