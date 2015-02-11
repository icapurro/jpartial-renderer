require 'rails'
require 'active_support'

module JPartial

  module Renderer
    def render_json_partial
      view = ApplicationController.view_context_class.new("#{Rails.root}/app/views")
      JbuilderTemplate.new(view).encode do |json|
        yield json if block_given?
      end.as_json
    end

    def render_json(partial, options)
      render_json_partial do |json|
        if options[:wrap_with]
          json.set! options[:wrap_with] do
            json.partial! partial, options
          end
        else
          json.partial! partial, options
        end
      end
    end
  end
end