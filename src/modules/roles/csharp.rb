module Bot::DoTRoles
  module Cs
    extend Discordrb::Commands::CommandContainer
    command :csharp do |event|
      cs_id = 414116999250313216
      if event.user.roles.include?(cs_id)
        event.user.remove_role(cs_id)
        event.send "C# rolü kaldırıldı."
      else
        event.user.add_role(cs_id)
        event.send "C# rolü eklendi."
      end
    end
  end
end
