require 'test_helper'

class DateAnswerTest < Test::Unit::TestCase

  def test_should_create_date_answer_field 
    date = FactoryForm::DateAnswer.new(:id => "date_1", :label => "Give date of establishment")
    assert_equal "date", date.validation_format
  end

end