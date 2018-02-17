module Bot::DoTRoles
  module Database
    extend Discordrb::Commands::CommandContainer
    command :database do |event|
      database_id = 414117072923263006
      if event.user.roles.include?(database_id)
        event.user.remove_role(database_id)
        event.send "Database rolü kaldırıldı."
      else
        event.user.add_role(database_id)
        event.send "Database rolü eklendi."
      end
    end
  end
end
