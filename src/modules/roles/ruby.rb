module Bot::DoTRoles
  module Ruby
    extend Discordrb::Commands::CommandContainer
    command :ruby do |event|
      ruby_id = 414117262207746058
      if event.user.roles.include?(ruby_id)
        event.user.remove_role(ruby_id)
        event.send "Ruby rolü kaldırıldı."
      else
        event.user.add_role(ruby_id)
        event.send "Ruby rolü eklendi."
      end
      # event.user.roles.include?(ruby_id) ? event.user.remove_role(ruby_id) : event.user.add_role(ruby_id)
      # event.user.roles.include?(ruby_id) ? event.send "Ruby rolü eklendi." : event.send "Ruby rolü kaldırıldı."
    end
  end
end
