# frozen_string_literal: true

Cucumberhtml::Engine.routes.draw do
  get 'index', to: 'cucumber_to_html#index'
end
