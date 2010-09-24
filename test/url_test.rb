require 'test_helper'

class UrlTest < Test::Unit::TestCase

  def test_should_create_url_answer_field 
    url = FormHelper::Url.new(:id => "url_1", :label => "Give url")
    assert_equal "url", url.validation_format
    assert_equal "short_answer", url.field_type
  end

end