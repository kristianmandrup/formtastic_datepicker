# FormtasticDatepickerInputs

module Formtastic
 
  module DatePicker
    protected

    def date_picker_input(method, options = {})
        options = options.dup
        options[:input_html] ||= {}
        options[:wrapper_html] ||= {}
        options[:input_html][:class] = [options[:input_html][:class], "datepicker"].compact.join(' ')
        options[:wrapper_html][:class] = [options[:wrapper_html][:class], "filter_form_field filter_date_range"].compact.join(" ")
        options[:input_html][:size] ||= "10"
        string_input(method, options)
    end
  end
  
end

Formtastic::SemanticFormBuilder.send(:include, Formtastic::DatePicker)
