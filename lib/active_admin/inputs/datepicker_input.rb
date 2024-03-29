module ActiveAdmin
  module Inputs
    class DatepickerInput < ::Formtastic::DatePicker
      def input_html_options
        options = super
        options[:class] = [options[:class], "ui-datepicker"].compact.join(' ')
        options
      end
    end
  end
end
