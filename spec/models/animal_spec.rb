require 'rails_helper'

RSpec.describe Animal, type: :model do
  let!(:user) {create(:user)}
  let!(:breed) {create(:breed)}
  let(:animal) {create(:animal)}
  describe 'as validation' do
    context 'is valid' do
      it 'with name , image and sex ' do
        expect(animal).to be_valid
      end
    end
    context 'is invalid' do
      it 'without name' do
        animal[:name] = nil
        expect(animal).not_to be_valid
      end
      xit 'without image' do
        animal[:image]=""
        expect(animal).not_to be_valid
      end
      it 'without sex' do
        animal[:sex] = nil
        expect(animal).not_to be_valid
      end
    end
  end

  describe 'as association' do
    let(:association) { described_class.reflect_on_association(target) }

    context 'belongs to' do
      let(:target) { :breed }
      it 'Breed' do
        expect(association.macro).to eq :belongs_to
      end
    end
    context 'belongs to' do
      let(:target) { :user }
      it 'User' do
        expect(association.macro).to eq :belongs_to
      end
    end
    context 'has many' do
      let(:target) { :posts }
      it 'Posts' do
        expect(association.macro).to eq :has_many
      end
    end
  end
end