unless Rails.env.production?

	Rails.application.routes.draw do |map|

	  mount_at = Gui::Engine.config.mount_at

	  match mount_at => 'gui/widgets#index'

	  map.resources :widgets, :only => [ :index, :show ],
							  :controller => "gui/widgets",
							  :path_prefix => mount_at,
							  :name_prefix => "gui_"

	end
end
