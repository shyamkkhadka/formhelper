require 'test_helper'

class RatingTest < Test::Unit::TestCase
  def test_should_create_rating_answer_field 

    # Rating answer field should have scale attributes passed as well
    assert_raise(FormHelper::ParameterExpectedException){ FormHelper::Rating.new(:id => "rating_1", :label => "Choose your ranking" ) }
  
    # Create rating answer field providing scales
    rating = FormHelper::Rating.new(:id => "rating_1", :label => "Choose your ranking" , :scale => "5" )
    assert_equal 5, rating.scale
    assert_equal "", rating.from_label
  
    # Create rating answer field providing from and to label
    rating = FormHelper::Rating.new(:id => "rating_1", :label => "How would you rank this website, on the basis of easiness of UI ?" , :scale => 5, :from_label => "bad", :to_label => "good" )
    assert_equal "bad", rating.from_label
    assert_equal "good", rating.to_label
    assert_equal "rating", rating.field_type
  end
  
end