module FormHelper
  class Boolean < Field
    attr_accessor :values # True/false values

    def initialize(options={})
      self.values = options[:values] = [true, false]
      options[:field_type] = "boolean"

      super(options)
      
      # Unique is always false
      self.unique = false

    end
  end
end

