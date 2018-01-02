# frozen_string_literal: true

module CucumberToHtml::Cell
  class Element < Cucumberhtml::Cell
    def name
      model['name']
    end

    def keyword
      model['keyword']
    end

    def steps
      model['steps']
    end

    def step(step)
      Step.call(step).call
    end
  end
end
