json.result true
json.message I18n.t('api.success_message.get')
#json.data @contents
json.data @contents do |content|
  json.id content.id
  json.name content.name
  json.sort_order content.sort_order
  json.enabled content.enabled
  json.image content.image

  json.sub_categories content.sub_categories.order(:sort_order) do |sub|
    json.id sub.id
    json.name sub.name
    json.sort_order sub.sort_order
    json.enabled sub.enabled
  end

end
