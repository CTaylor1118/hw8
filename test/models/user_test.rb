require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.create(lname: "Taylor", fname: "Tom", email: "thomas@gmail.com", thumbnail: "tom.png")
  end
  test "user must be valid" do
    assert @user.valid?
  end

  test "first name must be present" do
    @user.fname = ""
    assert_not @user.valid?
  end
  test "last name must be present" do
    @user.lname = ""
    assert_not @user.valid?
  end
  test "email must be present" do
    @user.email = ""
    assert_not @user.valid?
  end
end
