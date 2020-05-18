require 'rails_helper'

RSpec.feature 'Animals', type: :system do
  let!(:user){create(:user)}
  let!(:animal){create(:animal,user_id:user.id)}

  describe "Animal" do
    before  do
      visit user_session_path
      fill_in "user_email", with: "#{user.email}"
      fill_in "user_password", with: "#{user.password}"
      click_button 'Log in'
    end

    it 'index animal' do
      visit  root_path
      expect(page).to have_content "#{animal.name}"
      expect(page).to have_content "#{user.name}"

      click_on "#{user.name}"
      click_link '新規登録', href: new_animal_path(user)

      expect(page).to have_content '歯磨きする子の登録'
      fill_in "おなまえ", with: "新しく動物を登録"
      ＃＃＃

    end

    it 'show animal' do
    end
  
    it 'edit animal' do
    end

    it 'delete animal' do
    end
  end
end