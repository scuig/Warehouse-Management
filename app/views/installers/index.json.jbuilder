json.array!(@installers) do |installer|
  json.extract! installer, :id, :employee_key, :first_name, :last_name
  json.url installer_url(installer, format: :json)
end
