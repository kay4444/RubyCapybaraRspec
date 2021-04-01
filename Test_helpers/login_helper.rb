EMAIL_FIELD_ID = "user_email"
PASSWORD_FIELD_ID = "user_password"
SIGN_IN_BTN = "#sign-in-submit-button"

module LoginHelper

  def login(login, password)
    puts "Log in with account: #{login}/#{password}"
    within_frame 0 do
      fill_in(EMAIL_FIELD_ID, with: login)[:disabled]
      fill_in(PASSWORD_FIELD_ID, with: password)[:disabled]
      click_button('Sign in')
    end
  end

  def get_sign_in_button
    rescue_exceptions do
      within_frame 0 do
        return find(SIGN_IN_BTN)
      end
    end
  end

end