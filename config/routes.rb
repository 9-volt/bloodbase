Bloodbase::Application.routes.draw do
  get '/pages/:action', controller: "pages", as: "pages"
  root to: 'pages', action: 'index'
end
