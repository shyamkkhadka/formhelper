module FormHelper
  class MultipleChoice < Field
    attr_accessor :values # Option values
    # attr_accessor :type # select_box, check_box, radio_button(:default)
    FIELD_TYPE = ["select_box", "check_box", "radio_button"]

    def initialize(options={})
      options[:field_type] ||=  "radio_button"
      super(options)

      # Unique is always false
      @unique = false
      
      if options[:values] && options[:values].length > 1
        @values = options[:values]
      else
        raise(ParameterExpectedException, "Missing option values (at least two)")
      end
      
      
      check_field_type
    end

    def add_option(value)
      @values.push(value)
    end

    def remove_option(value)
      @values.delete(value)
    end
    
    private
    def check_field_type
      raise(ArgumentError, "Invalid Field Type, Expected one of select_box, check_box, radio_button") if !FIELD_TYPE.include?(@field_type)
    end
    
  end
end

