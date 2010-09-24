require 'test_helper'

class NumberTest < Test::Unit::TestCase

  def test_should_create_number_answer_field 
    number = FactoryForm::Number.new(:id => "number_1", :label => "Give phone number")
    assert_equal "number", number.validation_format
    assert_equal "short_answer", number.field_type 
  end

end