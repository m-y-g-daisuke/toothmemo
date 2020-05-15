require 'rails_helper'

RSpec.describe Animal, type: :model do
  let!(:user) {create(:user)}
  let!(:breed) {create(:breed)}
  let(:animal) {create(:animal)}
  describe 'validation' do
    context 'valid' do
      it 'is with name , image and sex ' do
        expect(animal).to be_valid
      end
    end
    context 'invalid' do
      it 'is without name' do
        animal[:name] = nil
        expect(animal).not_to be_valid
      end
      # it 'is without image' do
      #   animal[:image]=""
      #   expect(animal).not_to be_valid
      # end
      it 'is without sex' do
        animal[:sex] = nil
        expect(animal).not_to be_valid
      end
    end
  end

  describe 'association' do
    let(:association) { described_class.reflect_on_association(target) }

    context 'Breed' do
      let(:target) { :breed }
      it 'belongs_to' do
        expect(association.macro).to eq :belongs_to
      end
    end
    context 'User' do
      let(:target) { :user }
      it 'belongs_to' do
        expect(association.macro).to eq :belongs_to
      end
    end
    context 'Post' do
      let(:target) { :posts }
      it 'has_many' do
        expect(association.macro).to eq :has_many
      end
    end
  end
end