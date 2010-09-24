require 'test_helper'

class BooleanTest < Test::Unit::TestCase

  def test_should_create_boolean_answer_field 
    bool = FormHelper::Boolean.new(:id => "fav-color", :label => "Choose your favourite color")
    assert_equal [true, false], bool.values
  end

end