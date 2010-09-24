require 'yaml'
require 'rubygems'
require 'json/pure'
require File.join(File.dirname(__FILE__),'utils')
require 'rexml/document'

module FactoryForm
  # Form is simply an ordered array of fields. Each Field is simply a hash of field options.
  class Form 
    attr_accessor :title, :fields

    def initialize(options = {})
      @title = options[:title] || ""
      @fields = Array.new
    end

    # Add field object
    def add(field, position=@fields.length)
      # Check for duplicate ID
      unless get_ids.include?(field.id)
        @fields.insert(position, field)
      else
        raise(DuplicateIDException, "Duplicate ID")
      end

    end

    # Get field object by ID  
    # form.get(:id => "email_1")
    # TODO:: Get element by other attributes as well
    def get(option)
      # @fields[@fields.index(option)]
      @fields[get_ids.index(option[:id])]
    end

    # Remove field object
    def remove(field)
      @fields.delete(field)
    end

    def move_up(field, steps = 1)
      @fields.move_object(field, @fields.index(field) - steps)
    end

    def move_down(field, steps = 1)
      @fields.move_object(field, @fields.index(field) + steps)
    end  

    def move_to_position(field, position)
      @fields.move_object(field, position)
    end

    def add_to_position(field, position)
      @fields.insert(position, field)  
    end

    def to_yml
      self.to_yaml
    end

    def to_json
      fields = Array.new
      @fields.each do |f|
        attributes = f.instance_variables.map{|a| a.gsub("@","")}
        attributes_hash = {}
        attributes.each do |a|
          attributes_hash[a] = f.send(a)
        end
        fields << {f.class.name => attributes_hash }  
      end
      fields
      fields.to_json
    end

    def to_xml
      doc = REXML::Document.new
      root = doc.add_element("Form")

      title_element = root.add_element("Title")
      title_element.add_text("#{self.title}")

      out_string = ''
      @fields.each {|field|
        field_element = root.add_element("Field")
        field_type_element = field_element.add_element("#{field.class.name}")

        field_type_element.add_attribute("id", field.id)
        field_type_element.add_attribute("label", field.label)

        attributes = field.instance_variables.map{|a| a.gsub("@","")}
        attributes.each do |attrb|
          attrb_element = field_type_element.add_element("#{attrb}")

          # For option values of Multiple choice, separate them as option tags
          if attrb == "values"
            field.send(attrb).each do |option|
              option_element = attrb_element.add_element("option")
              option_element.add_text(option)
            end
          else
            attrb_element.add_text(field.send(attrb).to_s)
          end  
        end

        doc.write( out_string = "\n"+'<?xml version="1.0" encoding="UTF-8"?>'+"\n", 2 )

      }
      return out_string
    end

    private

    # List of all IDs
    def get_ids
      @fields.map(& :id)
    end

  end

  # Raised if the field with the same ID already exists
  class DuplicateIDException < RuntimeError

  end
  
end


