# frozen_string_literal: true

module CucumberToHtml::Cell
  class ScenarioOutline < Element
    def success?
      model['steps'].all? do |step|
        step.dig('result', 'status') == 'passed'
      end
    end

    def failure?
      false # TBD
    end

    def border_classes
      if success?
        'border-success'
      elsif failure?
        'border-danger'
      end
    end

    def body_classes
      if success?
        'text-success'
      elsif failure?
        'text-danger'
      end
    end
  end
end
