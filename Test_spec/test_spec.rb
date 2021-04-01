require_relative '../rails_helper'

describe "Regression testing." do
    user_email = 'kay444417@ukr.net'
    user_password = '1234567890'

    before(:each) do
      visit "https://kay9490.zendesk.com/access/unauthenticated"
    end

  context "Lead creation." do

    # to run just tests that contain tag (here: ":passed => true") - run the following command:
    # rspec --tag passed Test_spec/test_spec.rb
    it "Successfully logged in.", :passed => true do
      expect(get_sign_in_button).to be_truthy
      login(user_email, user_password)
      expect(get_sign_in_button).to be_falsey
    end

    it "Unsuccessfully logged in.", :passed => true do
      expect(get_sign_in_button).to be_truthy
      login(user_email, user_password+"false")
      expect(get_sign_in_button).to be_truthy
    end

  end
end

