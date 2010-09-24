module FactoryForm
  class DescriptiveContent 
    attr_reader :id
    attr_accessor :label, :value

    def initialize(options = {})
      unless options.empty? || options[:id].empty? || options[:label].empty?
        @id, @label, @value = options[:id], options[:label], options[:value] || options[:label]
      else
        raise(ParameterExpectedException, "Missing ID and label")
      end
    end

  end
end


