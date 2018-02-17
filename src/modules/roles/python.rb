module Bot::DoTRoles
  module Python
    extend Discordrb::Commands::CommandContainer
    command :python do |event|
      python_id = 414117175817928704
      if event.user.roles.include?(python_id)
        event.user.remove_role(python_id)
        event.send "Python rolü kaldırıldı."
      else
        event.user.add_role(python_id)
        event.send "Python rolü eklendi."
      end
    end
  end
end
