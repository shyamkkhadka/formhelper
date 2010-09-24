require 'test_helper'

class FormTest < Test::Unit::TestCase

  def test_should_create_form
    # Create short answer and long answer objects
    sa = FormHelper::ShortAnswer.new(:id => "email_1",:label => "Personal email address" )
    la = FormHelper::LongAnswer.new(:id => "comment_1",:label => "Provide your comments below")
    form = FormHelper::Form.new() 

    # Add short answer and long answer objects
    form.add(sa)
    form.add(la)

    assert_equal 2,form.fields.length

    # Create form object with title
    form2 = FormHelper::Form.new({:title => "Data collection"})
    assert_equal "Data collection", form2.title

  end

  def test_should_list_all_the_fields
    sa = FormHelper::ShortAnswer.new(:id => "url_1",:label => "Personal web address",
    :options => {
      :hint => "It should be his/her personal web address",
      :validation_format => "url",
      :required => true,
      :unique => false
    }
    )

    la = FormHelper::LongAnswer.new(:id => "comment_1",:label => "Provide your comments below", 
    :options => {
      :hint => "Up to a maximum of 250 characters",
      :required => false,
      :unique => true,
      :min_chars => 50,
      :rows => 6,
      :cols => 5
    }
    )
    form = FormHelper::Form.new()
    form.add(sa)
    form.add(la)

    # Get the list of all fields in the form
    list = form.fields

    assert_equal true,list.first.required
    assert_equal "url", list.first.validation_format

    assert_equal true,list.last.required    

  end

  def test_should_get_field
    form = create_form
    assert_equal 3, form.fields.length

    # Get email field
    field_to_delete = form.get(:id => "email_1")
    assert_instance_of FormHelper::ShortAnswer,field_to_delete  

    # Delete email field
    form.remove(field_to_delete)

    assert_equal 2, form.fields.length
    assert_instance_of FormHelper::LongAnswer, form.fields.first

  end

  def test_should_re_order_fields
    form = create_form
    field1 = form.get(:id => "email_1")
    field2 = form.get(:id => "comment_1")
    field3 = form.get(:id => "name_1")

    assert_equal 0,form.fields.index(field1)
    assert_equal 1,form.fields.index(field2)

    # Move email field down
    form.move_down(field1) 

    assert_equal 1,form.fields.index(field1)
    assert_equal 0,form.fields.index(field2)

    # Move comment field up
    form.move_up(field3)

    assert_equal 0,form.fields.index(field2)
    assert_equal 1,form.fields.index(field3)
    assert_equal 2,form.fields.index(field1)

  end

  def test_should_change_to_yml 
    form = create_form
    changed_yml = form.to_yml
    # TODO: FIND BETTER WAY FOR TESTING .yml CONTENT-TYPE
    assert_kind_of(String, changed_yml) 

    # Create short answer and long answer objects
    sa = FormHelper::ShortAnswer.new(:id => "email_1",:label => "Personal email address" )
    la = FormHelper::LongAnswer.new(:id => "comment_1",:label => "Provide your comments below")
    td = FormHelper::TextData.new(:id => "name_1", :label => "Person's name")    
    img = FormHelper::ImageData.new(:id => "photo_1", :label => "Photo of person")
    form = FormHelper::Form.new(:title => "Survey form") 

    # Add short answer and long answer objects
    form.add(sa)
    form.add(la)
    form.add(td)
    form.add(img)
    assert_instance_of FormHelper::ImageData, form.fields.last
    
  
  end

  def test_should_change_position_in_yml_string
    form = create_form
    field1 = form.get(:id => "email_1")
    field2 = form.get(:id => "comment_1")
    changed_yml = form.to_yml

    # Convert to hash for making sure that yaml string is also changed
    before_hash =  YAML::load(changed_yml)
    assert_instance_of FormHelper::ShortAnswer, before_hash.fields.first

    # Move email field down
    form.move_down(field1) 
    after_hash = YAML::load(form.to_yml)
    assert_instance_of FormHelper::LongAnswer, after_hash.fields.first

    form.add(FormHelper::TextData.new(:id => "my-name", :label => "my name"))
    assert_instance_of FormHelper::TextData, after_hash.fields.last

  end

  def test_should_change_to_xml 
    form = create_form
    changed_xml = form.to_xml
    # TODO: FIND BETTER WAY FOR TESTING .xml CONTENT-TYPE
    assert_kind_of(String, changed_xml) 
  end

  def test_should_change_to_json
    form = create_form  
    changed_json = form.to_json

    # TODO: FIND BETTER WAY FOR TESTING json CONTENT-TYPE
    assert_kind_of(String, changed_json) 
  end

  private 
  def create_form
    sa = FormHelper::ShortAnswer.new(:id => "email_1", :label => "Personal email address" )
    la = FormHelper::LongAnswer.new(:id => "comment_1", :label => "Provide your comments below")
    td = FormHelper::TextData.new(:id => "name_1", :label => "Person's name")  
    form = FormHelper::Form.new()
    form.add(sa)
    form.add(la)
    form.add(td)
    return form
  end
end