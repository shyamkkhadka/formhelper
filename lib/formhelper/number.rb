module FactoryForm
  class Number < ShortAnswer 
    def initialize(options={})
      options[:field_type] =  "short_answer"      
      super(options)
      @validation_format = "number"
    end
  end
end


