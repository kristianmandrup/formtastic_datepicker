module ActiveAdmin
  module Inputs
    class DatetimepickerInput < ::Formtastic::DateTimePicker
      def input_html_options
        options = super
        options[:class] = [options[:class], "ui-datepicker"].compact.join(' ')
        options
      end
    end
  end
end
