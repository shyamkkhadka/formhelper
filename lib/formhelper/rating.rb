module FormHelper
  # Rating has different scales
  class Rating < Field
    attr_accessor :scale, :from_label, :to_label

    def initialize(options={})
      options[:field_type] = "rating"
      super(options)
      
      # Default is 2 for number of scales
      if options[:scale] && options[:scale].to_i > 1
        self.scale = options[:scale].to_i
      else
        raise(ParameterExpectedException, "Missing rating scale (should be greater than or equal to 2)")
      end
    
      self.from_label = options[:from_label] || ""
      self.to_label = options[:to_label] || ""
          
    end
  end
end

