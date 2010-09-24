module FactoryForm
  class TimeAnswer< ShortAnswer 
    def initialize(options={})
      options[:field_type] = "short_answer"
      super(options)
      @validation_format = "time"
    end
  end
end


