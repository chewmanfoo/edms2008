require File.dirname(__FILE__) + '/../test_helper'

class UserTest < Test::Unit::TestCase
  # Be sure to include AuthenticatedTestHelper in test/test_helper.rb instead.
  # Then, you can remove it from this and the functional test.
  include AuthenticatedTestHelper
  fixtures :users

  #def test_invalid_with_empty_attributes
  #Abder-Rahman Ali 11/08/2008
  def test_invalid_with_empty_attributes
	  user = User.new
	  assert !user.valid?
	  assert user.errors.invalid?(:login)
	  assert user.errors.invalid?(:email)
	  assert user.errors.invalid?(:password)
	  assert user.errors.invalid?(:password_confirmation)
  end
  
  #def test_invalid_length_login_
  #Abder-Rahman Ali 11/09/2008
  
  def test_invalid_length_login
	  user = User.new(:email => "abder.rahman.ali@gmail.com", :password => "aaaaa", :password_confirmation => "aaaaa")
	  
	  user.login = "a"
	  assert !user.valid?
	  assert_equal "The login must be at least 3-characters long", user.errors.on(:login)
	  
	  user.login = "aa"
	  assert !user.valid?
	  assert_equal "The login must be at least 3-characters long", user.errots.on(:login)
  end
  
  #def test_valid_length_login_
  #Abder-Rahman Ali 11/09/2008
  
  def test_valid_length_login	  
         user = User.new(:email => "abder.rahman.ali@gmail.com", :password => "aaaaa", :password_confirmation => "aaaaa")
          
	  user.login = "aaa"
	  assert user.valid?
  end
  
  #def test_invalid_length_password
  #Abder-Rahman Ali 11/09/2008
  
  def test_invalid_length_password
	  user = User.new(:login => "abder", :email => "abder.rahman.ali@gmail.com", :password_confirmation => "aa")
	  
	  user.password = "aa"
	  assert !user.valid?
	  assert_equal "The password must be at least 4-characters long", user.errors.on(:password)
	  
	  user.password = "aaa"
	  assert !user.valid?
	  assert_equal "The password must be at least 4-characters long", user.errots.on(:password)
  end
  
  #def test_valid_length_password
  #Abder-Rahman Ali 11/09/2008
  
  def test_valid_length_password  
          user = User.new(:login => "abder", :email => "abder.rahman.ali@gmail.com", :password_confirmation => "aa")
          
	  user.password = "aaaaa"
	  assert user.valid?
  end
  
  #def test_invalid_length_email
  #Abder-Rahman Ali 11/09/2008
  
  def test_invalid_length_email
	  user = User.new(:login => "abder", :password => "aaaaa", :password_confirmation => "aaaaa")
	  
	  user.email = "@"
	  assert !user.valid?
	  assert_equal "The email must be at least 3-characters long", user.errors.on(:email)
	  
	  user.email = "a@"
	  assert !user.valid?
	  assert_equal "The email must be at least 3-characters long", user.errots.on(:email)
  end
  
  #def test_valid_length_email
  #Abder-Rahman Ali 11/09/2008
  
  def test_valid_length_email  
         user = User.new(:login => "abder", :password => "aaaaa", :password_confirmation => "aaaaa")
          
	 user.email = "abder.rahman.ali@gmail.com"
	  assert user.valid?
  end
  
  
  def test_should_create_user
    assert_difference 'User.count' do
      user = create_user
      assert !user.new_record?, "#{user.errors.full_messages.to_sentence}"
    end
  end

  def test_should_initialize_activation_code_upon_creation
    user = create_user
    user.reload
    assert_not_nil user.activation_code
  end

  def test_should_require_login
    assert_no_difference 'User.count' do
      u = create_user(:login => nil)
      assert u.errors.on(:login)
    end
  end

  def test_should_require_password
    assert_no_difference 'User.count' do
      u = create_user(:password => nil)
      assert u.errors.on(:password)
    end
  end

  def test_should_require_password_confirmation
    assert_no_difference 'User.count' do
      u = create_user(:password_confirmation => nil)
      assert u.errors.on(:password_confirmation)
    end
  end

  def test_should_require_email
    assert_no_difference 'User.count' do
      u = create_user(:email => nil)
      assert u.errors.on(:email)
    end
  end

  def test_should_reset_password
    users(:quentin).update_attributes(:password => 'new password', :password_confirmation => 'new password')
    assert_equal users(:quentin), User.authenticate('quentin', 'new password')
  end

  def test_should_not_rehash_password
    users(:quentin).update_attributes(:login => 'quentin2')
    assert_equal users(:quentin), User.authenticate('quentin2', 'test')
  end

  def test_should_authenticate_user
    assert_equal users(:quentin), User.authenticate('quentin', 'test')
  end

  def test_should_set_remember_token
    users(:quentin).remember_me
    assert_not_nil users(:quentin).remember_token
    assert_not_nil users(:quentin).remember_token_expires_at
  end

  def test_should_unset_remember_token
    users(:quentin).remember_me
    assert_not_nil users(:quentin).remember_token
    users(:quentin).forget_me
    assert_nil users(:quentin).remember_token
  end

  def test_should_remember_me_for_one_week
    before = 1.week.from_now.utc
    users(:quentin).remember_me_for 1.week
    after = 1.week.from_now.utc
    assert_not_nil users(:quentin).remember_token
    assert_not_nil users(:quentin).remember_token_expires_at
    assert users(:quentin).remember_token_expires_at.between?(before, after)
  end

  def test_should_remember_me_until_one_week
    time = 1.week.from_now.utc
    users(:quentin).remember_me_until time
    assert_not_nil users(:quentin).remember_token
    assert_not_nil users(:quentin).remember_token_expires_at
    assert_equal users(:quentin).remember_token_expires_at, time
  end

  def test_should_remember_me_default_two_weeks
    before = 2.weeks.from_now.utc
    users(:quentin).remember_me
    after = 2.weeks.from_now.utc
    assert_not_nil users(:quentin).remember_token
    assert_not_nil users(:quentin).remember_token_expires_at
    assert users(:quentin).remember_token_expires_at.between?(before, after)
  end

protected
  def create_user(options = {})
    record = User.new({ :login => 'quire', :email => 'quire@example.com', :password => 'quire', :password_confirmation => 'quire' }.merge(options))
    record.save
    record
  end
end
