require 'test_helper'

class TimeAnswerTest < Test::Unit::TestCase

  def test_should_create_time_answer_field 
    number = FactoryForm::TimeAnswer.new(:id => "time_1", :label => "Give departure time")
    assert_equal "time", number.validation_format
  end

end