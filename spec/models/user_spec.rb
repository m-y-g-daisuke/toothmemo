require 'rails_helper'

RSpec.describe User, type: :model do
  describe "User"do
  let!(:user){create(:user)}
  it "is valid with name, email, password" do
    expect(user).to be_valid
  end

  it "is invalid with duplicated email" do
    duplicated_user=build(:user,email:user.email)
    expect(duplicated_user).not_to be_valid
  end

  end
end
