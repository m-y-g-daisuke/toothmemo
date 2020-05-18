require 'rails_helper'

RSpec.describe 'Users', type: :system do
  let!(:user){create(:user)}
  let!(:animal){create(:animal)}
  let!(:posts){create_list(:post, 10)}

  describe "Post" do
    before  do
      visit user_session_path
      fill_in "user_email", with: "#{user.email}"
      fill_in "user_password", with: "#{user.password}"
      click_button 'Log in'
    end

    it 'new post'do
    end

    it 'show post' do
    end

    it 'edit post' do
    end

    it 'delete post' do
    end
  end
end