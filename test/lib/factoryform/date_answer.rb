module FactoryForm
  class DateAnswer < ShortAnswer 
    def initialize(options={})
      options[:field_type] = "date_answer"
      super(options)
      @validation_format = "date"
    end
  end
end

