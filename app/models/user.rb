class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation
   validates_length_of :password, :minimum => 3, :message => "password must be at least 3 characters long", :if => :password
  validates_confirmation_of :password, :message => "should match confirmation", :if => :password
  validates_presence_of :email, :message=>"Email field is empty"
  validates_presence_of :first_name, :message=>"First name field is empty"
  validates_presence_of :last_name, :message=>"Last name field is empty"
  validates_presence_of :password, :message=>"Password field is empty"
end
