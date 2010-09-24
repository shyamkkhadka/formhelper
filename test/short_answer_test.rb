require 'test_helper'

class ShortAnswerTest < Test::Unit::TestCase
  def test_should_create_short_answer_field_with_minimum_params_passed
    sa1 = FormHelper::ShortAnswer.new(:id => "email_1", :label => "Personal email address")

    # By default, no validation for different formats unless explicitly specified
    assert_equal "general",sa1.validation_format

    # By default, answer for this field is optional unless explicitly specified as required
    assert_equal true,sa1.required

    # By default, no uniqueness of answer for this field unless explicitly specified as unique
    assert_equal false,sa1.unique

    # Set validation format as email
    sa1.validation_format = "email"

    # Should have email format as validation_format
    assert_equal "email", sa1.validation_format

    # Set answer for this field as required
    sa1.required = true

    # Set answer for this field to be unique
    sa1.unique = true

    # Should have required attribute to be true
    assert_equal true, sa1.required 

    # Should have unique answers
    assert_equal true, sa1.unique 
    
    assert_equal "short_answer", sa1.field_type


    sa1.hint = "It should be his/her personal email address, not his official address."
    assert_equal "It should be his/her personal email address, not his official address.", sa1.hint

    # Ensures object of this class
    assert_instance_of FormHelper::ShortAnswer, sa1

  end

  def test_should_create_short_answer_field_with_all_other_optional_params 
    sa = FormHelper::ShortAnswer.new(:id => "url_1", :label => "Personal web address",
    :options => {
      :hint => "It should be his/her personal web address",
      :validation_format => "url",
      :required => true,
      :unique => false
    }
    )
    assert_equal "url_1", sa.id
    assert_equal "Personal web address", sa.label
    assert_equal "It should be his/her personal web address", sa.hint
    assert_equal "url", sa.validation_format
    assert_equal true, sa.required 
    assert_equal false, sa.unique 

  end

  def test_should_not_create_short_answer_field_if_required_params_are_missing
    # Raise expected argument exception as ID,label are required
    assert_raise(FormHelper::ParameterExpectedException){ FormHelper::ShortAnswer.new() }
  end

  def test_should_not_raise_exception_for_valid_params_passed
    assert_nothing_raised(Exception){ FormHelper::ShortAnswer.new(:id => "phone_number", :label => "Phone Number") }
  end

  def test_should_raise_exception_if_duplicate_ID_exists
    sa1 = FormHelper::ShortAnswer.new(:id => "email_1", :label => "Official email address")
    sa2 = FormHelper::ShortAnswer.new(:id => "email_1", :label => "Personal email address")
    form = FormHelper::Form.new
    form.add(sa1)
    
    # Raise duplicate ID exception
    assert_raise(FormHelper::DuplicateIDException){ form.add(sa2) }
  end


end