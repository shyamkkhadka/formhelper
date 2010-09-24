require 'test_helper'

class DescriptiveContentTest < Test::Unit::TestCase
  def test_should_create_descriptive_content_field_with_minimum_params_passed
    dc = FactoryForm::DescriptiveContent.new(:id => "field_3", :label => "Personal email address")
    assert_equal "Personal email address",dc.label
    
  end
  
  def test_should_raise_exception_unless_required_params_passed
    # Raise expected argument exception as ID,label are required
    assert_raise(FactoryForm::ParameterExpectedException){ FactoryForm::DescriptiveContent.new() }
  end
end