Devise::FailureApp.class_eval do

  def scope_url
    opts = {}
    route = route(scope)
    opts[:format] = request_format unless skip_format?


    router_name = Devise.mappings[scope].router_name || Devise.available_router_name

    context = send(router_name)

    if context.respond_to?(route)
      context.send(route, opts)
    elsif respond_to?(:root_url)
      root_url(opts)
    else
      "/"
    end
  end

end
