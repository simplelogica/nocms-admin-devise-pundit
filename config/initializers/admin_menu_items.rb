NoCms::Admin.menu_items << {
  name: 'users',
  url: proc { NoCms::Admin::Users::Engine.routes.url_helpers.users_path }
}
