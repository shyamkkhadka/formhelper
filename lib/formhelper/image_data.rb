module FactoryForm
  class ImageData < Field
    attr_accessor :alt, :url

    def initialize(options = {})
      options[:field_type] = "image_data"
      @url = options[:url] || options[:label]
      @alt = options[:alt] || options[:label]
      super(options)
    end
  end
end

