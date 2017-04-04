require 'test_helper'

class Account::PoststouchControllerTest < ActionDispatch::IntegrationTest
  test "should get app/views/account/posts/index.html.erb" do
    get account_poststouch_app/views/account/posts/index.html.erb_url
    assert_response :success
  end

end
