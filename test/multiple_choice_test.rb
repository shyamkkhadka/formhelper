require 'test_helper'

class MultipleChoiceTest < Test::Unit::TestCase
  def test_should_create_multiple_choice_answer_field 

    # Multiple choice should have value attributes passed as well
    assert_raise(FactoryForm::ParameterExpectedException){ FactoryForm::MultipleChoice.new(:id => "fav-color", :label => "Choose your favourite color") }

    mc = FactoryForm::MultipleChoice.new(:id => "fav-color", :label => "Choose your favourite color",
                                  :values => ["Red color","Green color"]
                                      )
    
    # There should be at least two values for this field
    assert_raise(FactoryForm::ParameterExpectedException){ FactoryForm::MultipleChoice.new(:id => "fav-color", :label => "Choose your favourite color") }
    assert_equal 2, mc.values.length
  
  end
    
  def test_should_add_remove_new_option
     mc = FactoryForm::MultipleChoice.new(:id => "fav-color", :label => "Choose your favourite color",
                                    :values => ["Red color","Green color"]
                                        )
     assert_equal "Green color", mc.values.last
     assert_equal 2, mc.values.length
                                 
    # Add other option values
    mc.add_option("Blue Color")
    assert_equal "Blue Color", mc.values.last
    assert_equal 3, mc.values.length
    
    mc.remove_option("Blue Color")
    assert_equal 2, mc.values.length
    
  end  
  
  def test_should_support_different_field_types
    mc = FactoryForm::MultipleChoice.new(:id => "fav-color", :label => "Choose your favourite color",
                                  :values => ["Red color","Green color"]
                                      )    
    assert_equal "radio_button", mc.field_type
    
    mc = FactoryForm::MultipleChoice.new(:id => "fav-color", :label => "Choose your favourite color",
                                        :values => ["Red color","Green color"],
                                        :field_type => "check_box"
                                        )    
    assert_equal "check_box", mc.field_type
    
    # Should not allow field types other than "select_box", "check_box", "radio_button"
    assert_raise(ArgumentError){ FactoryForm::MultipleChoice.new(:id => "fav-color", :label => "Choose your favourite color",
                                                                  :values => ["Red color","Green color"],
                                                                  :field_type => "list"
                                                                ) 
                                }
                                
    # Change field type to select_box
    mc.field_type = "select_box"
    assert_equal "select_box", mc.field_type
    
  end
    
end