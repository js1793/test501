json.array!(@menus) do |menu|
  json.extract! menu, :id, :.ideaname
  json.url menu_url(menu, format: :json)
end
