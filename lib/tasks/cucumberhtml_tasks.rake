module CucumberToHtml
end

require 'cells-rails'

require_relative '../../app/concepts/cucumber_to_html/cell/gherkin'


namespace :cucumberhtml do
  task :export, [:filename, :outfile] => :environment do |_t, args|
    desc 'Exporting cucumber html'
    filename = args[:filename] || 'tmp/cucumber_result.json'
    outfile = args[:outfile] || 'tmp/cucumber_result.html'

    file = File.read(filename)
    json = JSON.parse(file)
    html = CucumberToHtml::Cell::Gherkin.call(json)
    open(outfile, 'w') do |f|
      f << html
    end
  end

  # task export3: :environment, :filename do |_t, args|
  #   desc 'Exporting cucumber html'
  #   filename ='tmp/cucumber_result.json'
  #   outfile = 'tmp/cucumber_result.html'
  #
  #   file = File.read(filename)
  #   json = JSON.parse(file)
  #   html = CucumberToHtml::Cell::Gherkin.call(json)
  #   open(outfile, 'w') do |f|
  #     f << html
  #   end
  # end
end
