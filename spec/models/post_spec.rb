require 'rails_helper'

RSpec.describe Post, type: :model do
  let!(:animal){create(:animal)}
  describe 'Post' do
    context 'as valid' do
    let(:post){build(:post)}
    it 'is with recorded_at' do
      expect(post).to be_valid
    end
  end
  context 'as invalid' do
    let(:post){build(:post,recorded_at:nil)}
      it 'is without recorded_at' do
        expect(post).to be_invalid
      end
    end
  end
  describe 'Post' do
    let(:association) { described_class.reflect_on_association(target) }

    context 'as association' do
      let(:target) { :animal }
      it 'belongs_to Animal' do
        expect(association.macro).to eq :belongs_to
      end
    end
  end
end
