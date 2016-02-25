require 'test_helper'

class BugTest < ActiveSupport::TestCase
  def setup
    @bug = Bug.create(title: 'A test title', description: 'This is the actual text of our article. It can be rather long.', issue_type: 0, status: 1, priority: 1)
  end

  test "bug must be valid" do
    assert @bug.valid?
  end

  test "title must be present" do
    @bug.title = ""
    assert_not @bug.valid?
  end

  test "title must not be too short" do
    @bug.title = "aa"
    assert_not @bug.valid?
  end

  test "title must not be too long" do
    @bug.title = "a" * 81
    assert_not @bug.valid?
  end

  test "description must be present" do
    @bug.description = ""
    assert_not @bug.valid?
  end

  test "description must not be too short" do
    @bug.description = "aa"
    assert_not @bug.valid?
  end

  test "description must not be too long" do
    @bug.description = "a" * 801
    assert_not @bug.valid?
  end

  test "status must be valid" do
    invalid_statuses = [-10, -1, 4, 10]
    invalid_statuses.each do |is|
      begin
        @bug.status = is
        assert false, "#{is} should be invalid"
      rescue
        assert true
      end
    end
  end
  test "priority must be valid" do
    invalid_statuses = [-10, -1, 4, 10]
    invalid_statuses.each do |is|
      begin
        @bug.priority = is
        assert false, "#{is} should be invalid"
      rescue
        assert true
      end
    end
  end
  test "issue type must be valid" do
    invalid_statuses = [-10, -1, 4, 10]
    invalid_statuses.each do |is|
      begin
        @bug.issue_type = is
        assert false, "#{is} should be invalid"
      rescue
        assert true
      end
    end
  end
end
