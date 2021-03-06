# Generated by jeweler
# DO NOT EDIT THIS FILE
# Instead, edit Jeweler::Tasks in Rakefile, and run `rake gemspec`
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{formhelper}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["shyamkkhadka"]
  s.date = %q{2010-09-24}
  s.description = %q{This is a library to create different form field elements, allows form object to parse into different formats (YAML, JSON, XML)
    }
  s.email = %q{shyamkkhadka@gmail.com}
  s.extra_rdoc_files = [
    "README",
     "README.rdoc"
  ]
  s.files = [
    "History.txt",
     "README",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "formhelper.gemspec",
     "init.rb",
     "lib/formhelper.rb",
     "lib/formhelper/boolean.rb",
     "lib/formhelper/currency.rb",
     "lib/formhelper/date_answer.rb",
     "lib/formhelper/descriptive_content.rb",
     "lib/formhelper/email.rb",
     "lib/formhelper/field.rb",
     "lib/formhelper/form.rb",
     "lib/formhelper/image_data.rb",
     "lib/formhelper/long_answer.rb",
     "lib/formhelper/multiple_choice.rb",
     "lib/formhelper/number.rb",
     "lib/formhelper/rating.rb",
     "lib/formhelper/short_answer.rb",
     "lib/formhelper/text_data.rb",
     "lib/formhelper/time_answer.rb",
     "lib/formhelper/url.rb",
     "lib/formhelper/utils.rb",
     "pkg/formhelper-0.1.0.gem",
     "rdoc/classes/Array.html",
     "rdoc/classes/FactoryForm.html",
     "rdoc/classes/FactoryForm/Boolean.html",
     "rdoc/classes/FactoryForm/Currency.html",
     "rdoc/classes/FactoryForm/DateAnswer.html",
     "rdoc/classes/FactoryForm/DescriptiveContent.html",
     "rdoc/classes/FactoryForm/DuplicateIDException.html",
     "rdoc/classes/FactoryForm/Email.html",
     "rdoc/classes/FactoryForm/Field.html",
     "rdoc/classes/FactoryForm/Form.html",
     "rdoc/classes/FactoryForm/ImageData.html",
     "rdoc/classes/FactoryForm/LongAnswer.html",
     "rdoc/classes/FactoryForm/MultipleChoice.html",
     "rdoc/classes/FactoryForm/Number.html",
     "rdoc/classes/FactoryForm/ParameterExpectedException.html",
     "rdoc/classes/FactoryForm/Rating.html",
     "rdoc/classes/FactoryForm/ShortAnswer.html",
     "rdoc/classes/FactoryForm/TextData.html",
     "rdoc/classes/FactoryForm/TimeAnswer.html",
     "rdoc/classes/FactoryForm/Url.html",
     "rdoc/created.rid",
     "rdoc/files/README_rdoc.html",
     "rdoc/files/lib/factoryform/boolean_rb.html",
     "rdoc/files/lib/factoryform/currency_rb.html",
     "rdoc/files/lib/factoryform/date_answer_rb.html",
     "rdoc/files/lib/factoryform/descriptive_content_rb.html",
     "rdoc/files/lib/factoryform/email_rb.html",
     "rdoc/files/lib/factoryform/field_rb.html",
     "rdoc/files/lib/factoryform/form_rb.html",
     "rdoc/files/lib/factoryform/image_data_rb.html",
     "rdoc/files/lib/factoryform/long_answer_rb.html",
     "rdoc/files/lib/factoryform/multiple_choice_rb.html",
     "rdoc/files/lib/factoryform/number_rb.html",
     "rdoc/files/lib/factoryform/rating_rb.html",
     "rdoc/files/lib/factoryform/short_answer_rb.html",
     "rdoc/files/lib/factoryform/text_data_rb.html",
     "rdoc/files/lib/factoryform/time_answer_rb.html",
     "rdoc/files/lib/factoryform/url_rb.html",
     "rdoc/files/lib/factoryform/utils_rb.html",
     "rdoc/files/lib/factoryform_rb.html",
     "rdoc/fr_class_index.html",
     "rdoc/fr_file_index.html",
     "rdoc/fr_method_index.html",
     "rdoc/index.html",
     "rdoc/rdoc-style.css",
     "test/History.txt",
     "test/README.rdoc",
     "test/Rakefile",
     "test/VERSION",
     "test/boolean_test.rb",
     "test/currency_test.rb",
     "test/date_answer_test.rb",
     "test/descriptive_content_test.rb",
     "test/factoryform.gemspec",
     "test/field_test.rb",
     "test/form_test.rb",
     "test/image_data_test.rb",
     "test/init.rb",
     "test/lib/factoryform.rb",
     "test/lib/factoryform/boolean.rb",
     "test/lib/factoryform/currency.rb",
     "test/lib/factoryform/date_answer.rb",
     "test/lib/factoryform/descriptive_content.rb",
     "test/lib/factoryform/email.rb",
     "test/lib/factoryform/field.rb",
     "test/lib/factoryform/form.rb",
     "test/lib/factoryform/image_data.rb",
     "test/lib/factoryform/long_answer.rb",
     "test/lib/factoryform/multiple_choice.rb",
     "test/lib/factoryform/number.rb",
     "test/lib/factoryform/rating.rb",
     "test/lib/factoryform/short_answer.rb",
     "test/lib/factoryform/text_data.rb",
     "test/lib/factoryform/time_answer.rb",
     "test/lib/factoryform/url.rb",
     "test/lib/factoryform/utils.rb",
     "test/long_answer_test.rb",
     "test/multiple_choice_test.rb",
     "test/number_test.rb",
     "test/rating_test.rb",
     "test/rdoc/classes/Array.html",
     "test/rdoc/classes/FactoryForm.html",
     "test/rdoc/classes/FactoryForm/Boolean.html",
     "test/rdoc/classes/FactoryForm/Currency.html",
     "test/rdoc/classes/FactoryForm/DateAnswer.html",
     "test/rdoc/classes/FactoryForm/DescriptiveContent.html",
     "test/rdoc/classes/FactoryForm/DuplicateIDException.html",
     "test/rdoc/classes/FactoryForm/Email.html",
     "test/rdoc/classes/FactoryForm/Field.html",
     "test/rdoc/classes/FactoryForm/Form.html",
     "test/rdoc/classes/FactoryForm/ImageData.html",
     "test/rdoc/classes/FactoryForm/LongAnswer.html",
     "test/rdoc/classes/FactoryForm/MultipleChoice.html",
     "test/rdoc/classes/FactoryForm/Number.html",
     "test/rdoc/classes/FactoryForm/ParameterExpectedException.html",
     "test/rdoc/classes/FactoryForm/Rating.html",
     "test/rdoc/classes/FactoryForm/ShortAnswer.html",
     "test/rdoc/classes/FactoryForm/TextData.html",
     "test/rdoc/classes/FactoryForm/TimeAnswer.html",
     "test/rdoc/classes/FactoryForm/Url.html",
     "test/rdoc/created.rid",
     "test/rdoc/files/README_rdoc.html",
     "test/rdoc/files/lib/factoryform/boolean_rb.html",
     "test/rdoc/files/lib/factoryform/currency_rb.html",
     "test/rdoc/files/lib/factoryform/date_answer_rb.html",
     "test/rdoc/files/lib/factoryform/descriptive_content_rb.html",
     "test/rdoc/files/lib/factoryform/email_rb.html",
     "test/rdoc/files/lib/factoryform/field_rb.html",
     "test/rdoc/files/lib/factoryform/form_rb.html",
     "test/rdoc/files/lib/factoryform/image_data_rb.html",
     "test/rdoc/files/lib/factoryform/long_answer_rb.html",
     "test/rdoc/files/lib/factoryform/multiple_choice_rb.html",
     "test/rdoc/files/lib/factoryform/number_rb.html",
     "test/rdoc/files/lib/factoryform/rating_rb.html",
     "test/rdoc/files/lib/factoryform/short_answer_rb.html",
     "test/rdoc/files/lib/factoryform/text_data_rb.html",
     "test/rdoc/files/lib/factoryform/time_answer_rb.html",
     "test/rdoc/files/lib/factoryform/url_rb.html",
     "test/rdoc/files/lib/factoryform/utils_rb.html",
     "test/rdoc/files/lib/factoryform_rb.html",
     "test/rdoc/fr_class_index.html",
     "test/rdoc/fr_file_index.html",
     "test/rdoc/fr_method_index.html",
     "test/rdoc/index.html",
     "test/rdoc/rdoc-style.css",
     "test/short_answer_test.rb",
     "test/test_helper.rb",
     "test/text_data_test.rb",
     "test/time_answer_test.rb",
     "test/url_test.rb"
  ]
  s.homepage = %q{http://github.com/shyamkkhadka/formhelper}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{This is a library to create different form field elements, allows form object to parse into different formats (YAML, JSON, XML)}
  s.test_files = [
    "test/boolean_test.rb",
     "test/currency_test.rb",
     "test/date_answer_test.rb",
     "test/descriptive_content_test.rb",
     "test/field_test.rb",
     "test/form_test.rb",
     "test/image_data_test.rb",
     "test/init.rb",
     "test/lib/factoryform/boolean.rb",
     "test/lib/factoryform/currency.rb",
     "test/lib/factoryform/date_answer.rb",
     "test/lib/factoryform/descriptive_content.rb",
     "test/lib/factoryform/email.rb",
     "test/lib/factoryform/field.rb",
     "test/lib/factoryform/form.rb",
     "test/lib/factoryform/image_data.rb",
     "test/lib/factoryform/long_answer.rb",
     "test/lib/factoryform/multiple_choice.rb",
     "test/lib/factoryform/number.rb",
     "test/lib/factoryform/rating.rb",
     "test/lib/factoryform/short_answer.rb",
     "test/lib/factoryform/text_data.rb",
     "test/lib/factoryform/time_answer.rb",
     "test/lib/factoryform/url.rb",
     "test/lib/factoryform/utils.rb",
     "test/lib/factoryform.rb",
     "test/long_answer_test.rb",
     "test/multiple_choice_test.rb",
     "test/number_test.rb",
     "test/rating_test.rb",
     "test/short_answer_test.rb",
     "test/test_helper.rb",
     "test/text_data_test.rb",
     "test/time_answer_test.rb",
     "test/url_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<json_pure>, ["~> 1.4.3"])
      s.add_runtime_dependency(%q<json_pure>, ["~> 1.4.3"])
    else
      s.add_dependency(%q<json_pure>, ["~> 1.4.3"])
      s.add_dependency(%q<json_pure>, ["~> 1.4.3"])
    end
  else
    s.add_dependency(%q<json_pure>, ["~> 1.4.3"])
    s.add_dependency(%q<json_pure>, ["~> 1.4.3"])
  end
end
