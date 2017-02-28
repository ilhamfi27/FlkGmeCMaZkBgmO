# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
Rails.application.config.assets.precompile += %w( doctors/index.scss )
Rails.application.config.assets.precompile += %w( doctors/edit.scss )
Rails.application.config.assets.precompile += %w( doctors/new.scss )
Rails.application.config.assets.precompile += %w( polyclinics/index.scss )
Rails.application.config.assets.precompile += %w( polyclinics/edit.scss )
Rails.application.config.assets.precompile += %w( polyclinics/new.scss )
Rails.application.config.assets.precompile += %w( landing_page/index.scss )
Rails.application.config.assets.precompile += %w( officers/index.scss )
Rails.application.config.assets.precompile += %w( medicines/new.scss )
Rails.application.config.assets.precompile += %w( medicines/index.scss )
Rails.application.config.assets.precompile += %w( medicines/edit.scss )
Rails.application.config.assets.precompile += %w( sessions/new.scss )
Rails.application.config.assets.precompile += %w( registrations/new.scss )
Rails.application.config.assets.precompile += %w( registrations/edit.scss )
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
