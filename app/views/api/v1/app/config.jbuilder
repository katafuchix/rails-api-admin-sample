json.result true
json.message I18n.t('api.success_message.get')
json.data do
  json.app_name @config.app_name

  json.android_is_maintenance @config.android_is_maintenance
  json.android_maintenance_message @config.android_maintenance_message
  json.android_force_update_version @config.android_force_update_version
  json.android_is_force_update @config.android_is_force_update

  json.ios_is_maintenance @config.ios_is_maintenance
  json.ios_maintenance_message @config.ios_maintenance_message
  json.ios_is_force_update @config.ios_is_force_update
  json.ios_force_update_version @config.ios_force_update_version
  json.ios_is_force_update @config.ios_is_force_update
end
