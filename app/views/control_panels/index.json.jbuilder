json.array!(@control_panels) do |control_panel|
  json.extract! control_panel, :id, :index, :update, :show, :destroy
  json.url control_panel_url(control_panel, format: :json)
end
