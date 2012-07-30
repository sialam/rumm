require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :first_name => "First Name",
      :last_name => "",
      :email => "Email",
      :crypted_password => "Crypted Password",
      :salt => "Salt"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(//)
    rendered.should match(/Email/)
    rendered.should match(/Crypted Password/)
    rendered.should match(/Salt/)
  end
end
