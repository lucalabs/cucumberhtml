module Cucumberhtml
  class Cell < Trailblazer::Cell # Cell::Concept
    # raise Cucumberhtml::Engine.root.inspect
    self.view_paths = ["#{Cucumberhtml::Engine.root}/app/concepts/"]
  end
end
