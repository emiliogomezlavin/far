require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :password_digest => "MyString",
      :current_city => "MyString",
      :origin_city => "MyString",
      :native_language => "MyString",
      :languages => "MyText",
      :age => 1
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_first_name[name=?]", "user[first_name]"

      assert_select "input#user_last_name[name=?]", "user[last_name]"

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_password_digest[name=?]", "user[password_digest]"

      assert_select "input#user_current_city[name=?]", "user[current_city]"

      assert_select "input#user_origin_city[name=?]", "user[origin_city]"

      assert_select "input#user_native_language[name=?]", "user[native_language]"

      assert_select "textarea#user_languages[name=?]", "user[languages]"

      assert_select "input#user_age[name=?]", "user[age]"
    end
  end
end
