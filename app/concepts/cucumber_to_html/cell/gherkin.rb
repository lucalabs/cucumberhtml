# frozen_string_literal: true

module CucumberToHtml::Cell
  class Gherkin < Cucumberhtml::Cell
    def feature_menu_list
      res = '<div class="list-group" id="list-tab" role="tablist">'
      model.each_with_index do |feature, index|
        res += Feature.call(feature, active: index.zero?).call(:feature_menu_item)
      end
      res + '</div>'
    end

    def feature_list
      res = '<div class="tab-content" id="nav-tabContent">'
      model.each_with_index do |feature, index|
        res += Feature.call(feature, active: index.zero?).call
      end
      res + '</div>'
    end
  end
end
