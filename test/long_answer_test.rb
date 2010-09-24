require 'test_helper'

class LongAnswerTest < Test::Unit::TestCase
  def test_should_create_long_answer_field
    la = FormHelper::LongAnswer.new(:id => "comments", :label => "Provide your comments below")

    # Long answer text should not have any validation format
    assert_equal "general", la.validation_format

    la.hint = "Up to a maximum of 250 characters"
    assert_equal "Up to a maximum of 250 characters", la.hint

    # By default, answer for this field is optional unless explicitly specified as required
    assert_equal true,la.required

    # By default, no uniqueness of answer for this field unless explicitly specified as unique
    assert_equal false,la.unique

    # Set answer for this field as required
    la.required = true

    # Set answer for this field to be unique
    la.unique = true

    # Should have required attribute to be true
    assert_equal true, la.required 

    # Should have unique answers
    assert_equal true, la.unique
      
    # Should have 500 min_chars
    assert_equal 500, la.min_chars
    
    # Pass min_chars 
    la2 = FormHelper::LongAnswer.new(:id => "comments", :label => "Provide your comments below", :options => {:min_chars => 700 })
    assert_equal 700, la2.min_chars
    
    # Field type
    assert_equal "long_answer", la.field_type

  end

   def test_should_not_create_long_answer_field_if_ID_label_are_missing
    # Raise expected argument exception as ID,label are required
    assert_raise(FormHelper::ParameterExpectedException){ FormHelper::LongAnswer.new() }
  end

  def test_should_set_minimum_number_of_characters
    la = FormHelper::LongAnswer.new(:id => "comments", :label => "Provide your comments below")
    la.min_chars = 500
    assert_equal 500,la.min_chars
  end

end