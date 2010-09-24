module FormHelper
  class Url < ShortAnswer 
    def initialize(options={})
      options[:field_type] = "short_answer"
      super(options)
      @validation_format = "url"
    end
  end
end

