module FormHelper
  class TextData < Field
    attr_accessor :value

    def initialize(options = {})
      options[:field_type] = "text_data"
      @value = options[:value] || options[:label]
      super(options)
    end
  end
end
