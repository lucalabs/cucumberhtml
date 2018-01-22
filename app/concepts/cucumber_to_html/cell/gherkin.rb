# frozen_string_literal: true

module CucumberToHtml::Cell
  class Gherkin < Cucumberhtml::Cell
    def feature_menu_list
      res = '<div class="list-group" id="list-tab" role="tablist">'
      sorted_feature_list.each_with_index do |feature, index|
        res += Feature.call(feature, active: index.zero?).call(:feature_menu_item)
      end
      res + '</div>'
    end

    def feature_list
      res = '<div class="tab-content" id="nav-tabContent">'
      sorted_feature_list.each_with_index do |feature, index|
        res += Feature.call(feature, active: index.zero?).call
      end
      res + '</div>'
    end

    private

    def sorted_feature_list
      model.sort_by { |a| a[:name] }
    end
  end
end
