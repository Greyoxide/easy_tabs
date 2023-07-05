# frozen_string_literal: true

require_relative "easy_tabs/version"
require 'easy_tabs/railtie' if defined?(Rails)
require 'easy_tabs/tabs_helper'

module EasyTabs
  class Error < StandardError; end
  # Your code goes here...
end