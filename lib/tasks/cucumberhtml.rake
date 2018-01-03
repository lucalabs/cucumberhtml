# frozen_string_literal: true

module CucumberToHtml
end

require 'cells-rails'

require_relative '../../app/concepts/cucumber_to_html/cell/gherkin'

namespace :cucumberhtml do
  desc 'Exporting cucumber html'
  task :export, %i[filename outfile] => :environment do |_t, args|
    filename = args[:filename] || 'tmp/cucumber_result.json'
    outfile = args[:outfile] || 'tmp/cucumber_result.html'

    file = File.read(filename)
    json = JSON.parse(file)
    html = CucumberToHtml::Cell::Gherkin.call(json)
    open(outfile, 'w') do |f|
      f << html
    end
  end
end
