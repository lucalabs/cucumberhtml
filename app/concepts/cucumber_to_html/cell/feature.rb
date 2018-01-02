# frozen_string_literal: true

module CucumberToHtml::Cell
  class Feature < Cucumberhtml::Cell
    def feature
      model
    end

    def feature_menu_item
      render :feature_menu_item
    end

    def active
      options[:active]
    end

    def feature_classes
      'show active' if active
    end

    def menu_classes
      "list-group-item list-group-item-action #{'active' if active}"
    end

    def feature_id
      "list-#{model['id']}"
    end

    def name
      model['name']
    end

    def description
      Kramdown::Document.new(model['description']).to_html
    end

    def element_list
      model['elements']
    end

    def element(element)
      case element['keyword']
      when 'Scenario'
        Scenario.call(element).call
      when 'Background'
        Element.call(element).call if element == element_list[0]
      else
        raise 'Unknown element'
      end
    end
  end
end
