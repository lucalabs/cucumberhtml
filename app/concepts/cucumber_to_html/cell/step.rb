# frozen_string_literal: true

class CucumberToHtml::Cell::Step < Cucumberhtml::Cell
  def keyword
    model['keyword']
  end

  def name
    model['name']
  end

  def success?
    model['result']['status'] == 'passed'
  end

  def text_classes
    # Difficult to read
    # 'text-success' if success?
  end

  # Others are line, match, duration
end
