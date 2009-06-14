ActionController::Routing::Routes.draw do |map|
  map.resources :pomodoros
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
