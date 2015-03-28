require 'hamlit/filters/base'

module Hamlit
  module Filters
    class Css < Base
      def compile(lines)
        ast = [:haml, :text, compile_lines(lines, indent_width: 2)]
        ast = [:multi, [:static, "\n"], ast]
        ast = [:html, :tag, 'style', [:html, :attrs], ast]
        ast
      end
    end
  end
end