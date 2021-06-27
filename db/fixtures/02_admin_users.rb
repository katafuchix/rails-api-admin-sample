admin_users = %w(special)
  .map.with_index { |name, i| {id: i + 1, name: name.capitalize, email: name + '@gmail.com', password: 'test12345', role: (name.to_s.include?('special') ? 'special' : 'admin') }}
Admin::User.seed_once(:id, *admin_users)
