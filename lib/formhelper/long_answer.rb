module FormHelper
  class LongAnswer < Field
    attr_accessor :min_chars
    def initialize(options={})
      options[:field_type] = "long_answer"
      super(options)
      @min_chars = options[:options][:min_chars] || 500 # Default number of chars 500
    end
  end
end


