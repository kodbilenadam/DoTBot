module Bot::DoTRoles
  module Javascript
    extend Discordrb::Commands::CommandContainer
    command :javascript do |event|
      javascript_id = 414117170319065089
      if event.user.roles.include?(javascript_id)
        event.user.remove_role(javascript_id)
        event.send "Javascript rolü kaldırıldı."
      else
        event.user.add_role(javascript_id)
        event.send "Javascript rolü eklendi."
      end
    end
  end
end
