module FactoryForm
  # Field is simply a hash of different attributes 
  class Field
    attr_reader :id
    attr_accessor :label, :hint, :required, :unique, :validation_format, :field_type

    def initialize(options)
      unless options.nil? || options[:id].nil? || options[:label].nil?
        extra_options = options[:options] || { }
        extra_options.merge!({
          # defaults
          :hint => extra_options[:hint] || " ",
          :required => extra_options[:required] || true,
          :unique => extra_options[:unique] || false,
          :validation_format => extra_options[:validation_format] || "general",
          })
          options.merge!({:options => extra_options})

          @id, @label, @hint, @required, @unique, @validation_format, @field_type = options[:id], options[:label],options[:options][:hint], options[:options][:required], options[:options][:unique], options[:options][:validation_format], options[:field_type]
        else
          raise(ParameterExpectedException, "Missing ID and label")
        end
      end
  end
end




