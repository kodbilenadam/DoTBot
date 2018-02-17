module Bot::DoTRoles
  module Dotnet
    extend Discordrb::Commands::CommandContainer
    command :dotnet do |event|
      dotnet_id = 414116926747443200
      if event.user.roles.include?(dotnet_id)
        event.user.remove_role(dotnet_id)
        event.send ".NET rolü kaldırıldı."
      else
        event.user.add_role(dotnet_id)
        event.send ".NET rolü eklendi."
      end
    end
  end
end
