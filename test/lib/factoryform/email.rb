module FactoryForm
  class Email < ShortAnswer 
    def initialize(options={})
      options[:field_type] = "short_answer"      
      super(options)
      @validation_format = "email"
      # extra attributes for ShortAnswer
    end
  end
  
end
