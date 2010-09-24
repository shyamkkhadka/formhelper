require 'test_helper'

class FieldTest < Test::Unit::TestCase

  def test_should_check_of_having_validation 
    sa1 = FactoryForm::ShortAnswer.new(:id => "email_1", :label => "Personal email address")
    la1 = FactoryForm::LongAnswer.new(:id => "comments", :label => "Provide your comments below")

    # By default, no validation for different formats unless explicitly specified
    assert_equal "general",sa1.validation_format 

    # By default, answer for this field is optional unless explicitly specified as required
    assert_equal true,sa1.required

    # By default, no uniqueness of answer for this field unless explicitly specified as unique
    assert_equal false,sa1.unique
  end

end