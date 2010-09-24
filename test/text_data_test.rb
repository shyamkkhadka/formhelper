require 'test_helper'

class TextDataTest < Test::Unit::TestCase
  def test_should_create_text_data_field_with_minimum_params_passed
    td = FactoryForm::TextData.new(:id => "email_1", :label => "Personal email address")
    assert_equal "Personal email address",td.label
    assert_equal 'text_data', td.field_type
    assert_equal 'general', td.validation_format
    assert_equal 'Personal email address', td.value
    assert_equal true, td.required    
  end
  
  def test_should_raise_exception_unless_required_params_passed
    # Raise expected argument exception as ID,label are required
    assert_raise(FactoryForm::ParameterExpectedException){ FactoryForm::TextData.new() }
  end
end