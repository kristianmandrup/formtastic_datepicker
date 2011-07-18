# FormtasticDatepickerInputs

module Formtastic
 
  module DatePicker
    protected

    def date_picker_input(method, options = {})
        options = options.dup
        options[:input_html] ||= {}
        options[:input_html][:class] = [options[:input_html][:class], "datepicker"].compact.join(' ')
        Rails.logger.log options[:input_html][:class]
        options[:input_html][:size] ||= "10"
        string_input(method, options)
    end
  end
  
end

Formtastic::SemanticFormBuilder.send(:include, Formtastic::DatePicker)
