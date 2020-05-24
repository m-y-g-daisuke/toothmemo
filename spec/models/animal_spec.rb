require 'rails_helper'

RSpec.describe Animal, type: :model do
  let!(:user) {create(:user)}
  let(:other_user) {create(:user)}
  let!(:breed) {create(:breed)}
  let!(:animal) {create(:animal)}
  let(:other_animal) {build(:animal)}
  
  describe 'Animal' do
    context 'as valid' do
      it 'is with name , image and sex ' do
        expect(animal).to be_valid
      end
      it 'allows to share the same name between other users' do
        other_animal[:name]=animal.name
        other_animal[:user_id]=other_user.id
        expect(other_animal).to be_valid
      end
    end
    context 'as invalid' do
      it 'is without name' do
        animal[:name] = nil
        expect(animal).not_to be_valid
      end
      it 'is without image' do
        expect(build(:animal,image:nil)).not_to be_valid
      end
      it 'is without sex' do
        animal[:sex] = nil
        expect(animal).not_to be_valid
      end
      it "with dupulicated name per user" do
        other_animal[:name] = animal.name
        other_animal[:user_id] = animal.user_id
        expect(other_animal).not_to be_valid
      end
    end
  end

  describe 'Animal' do
    let(:association) { described_class.reflect_on_association(target) }

    context 'as association' do
      let(:target) { :breed }
      it 'belongs to Breed' do
        expect(association.macro).to eq :belongs_to
      end
    
      let(:target) { :user }
      it 'belongs to User' do
        expect(association.macro).to eq :belongs_to
      end
    end
    context 'as association' do
      let(:target) { :posts }
      it 'has many Posts' do
        expect(association.macro).to eq :has_many
      end
    end
  end
end