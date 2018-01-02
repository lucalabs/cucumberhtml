# frozen_string_literal: true

module Cucumberhtml
  class CucumberToHtmlController < ApplicationController
    def index
      file = File.read('tmp/cucumber_result.json')
      json = JSON.parse(file)
      render html: CucumberToHtml::Cell::Gherkin.call(json)
    end
  end
end
