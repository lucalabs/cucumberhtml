# frozen_string_literal: true

module Cucumberhtml
  class Cell < Trailblazer::Cell
    self.view_paths = ["#{Cucumberhtml::Engine.root}/app/concepts/"]
  end
end
