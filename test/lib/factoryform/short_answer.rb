module FormHelper
  class ShortAnswer < Field
    def initialize(options={})
      options[:field_type] = options[:field_type] || "short_answer"
      super(options)
      # extra attributes for ShortAnswer

    end
  end
end

