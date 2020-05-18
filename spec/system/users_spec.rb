RSpec.describe 'Users', type: :system do
  let!(:user){create(:user)}
  
  describe "User" do
    before  do
      visit user_session_path
      fill_in "user_email", with: "#{user.email}"
      fill_in "user_password", with: "#{user.password}"
      click_button 'Log in'
    end
    
      it "login now" do
      expect(current_path).to eq root_path
      end

      it "edit user" do
      click_on "#{user.name}"
      click_link 'ユーザー編集', href: edit_user_path(user)

      expect(page).to have_field 'Name', with: "#{user.name}"
      expect(page).to have_field 'Eメール', with: "#{user.email}"

      fill_in 'Name', with: 'testuser'
      click_button 'Update'

       expect(page).to have_content 'testuser'
    end
  end
end