require 'test_helper'

class ImageDataTest < Test::Unit::TestCase
  def test_should_create_image_data_field_with_minimum_params_passed
    td = FormHelper::ImageData.new(:id => "photo_1", :label => "Photo of child")
    assert_equal "Photo of child",td.label
    
    # By default alt attribute is same as field id
    assert_equal "Photo of child",td.alt
    assert_equal "image_data",td.field_type
    assert_equal true,td.required    
  end
  
  def test_should_raise_exception_unless_required_params_passed
    # Raise expected argument exception as ID,label are required
    assert_raise(FormHelper::ParameterExpectedException){ FormHelper::ImageData.new() }
  end
end