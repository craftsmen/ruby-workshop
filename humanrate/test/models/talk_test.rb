require 'test_helper'

class TalkTest < ActiveSupport::TestCase
  test "should not save post without name" do
    talk = Talk.new
    assert_not talk.valid?
  end
end
