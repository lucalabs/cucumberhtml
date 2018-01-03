# frozen_string_literal: true

require 'cucumberhtml'
require 'rails'

module Cucumberhtml
  class Railtie < Rails::Railtie
    railtie_name :cucumberhtml

    rake_tasks do
      load 'tasks/cucumberhtml.rake'
    end
  end
end
