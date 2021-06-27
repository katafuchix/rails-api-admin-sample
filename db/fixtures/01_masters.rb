{
  Master::Holiday =>               %w[月 火 水 木 金 土 日 祝日],
  Master::Prefecture =>            %w[東京都 神奈川県 埼玉県 千葉県 大阪府 京都府 兵庫県 奈良県 愛知県 岐阜県 三重県 福岡県 北海道 青森県 岩手県 宮城県 秋田県 山形県 福島県 茨城県 栃木県 群馬県 新潟県 富山県 石川県 福井県 山梨県 長野県 静岡県 滋賀県 和歌山県 鳥取県 島根県 岡山県 広島県 山口県 徳島県 香川県 愛媛県 高知県 佐賀県 長崎県 熊本県 大分県 宮崎県 鹿児島県 沖縄県 海外],
  Master::ViolationCategory =>     %w[新規加入問い合わせ 不適切な登録内容 その他],
}.each do |_class_, names|
  attrs = names.map.with_index { |name, i = 1| {name: name, type: _class_.name, enabled: true, sort_order: i + 1} }
  _class_.seed_once(:name, :type, *attrs)
end
