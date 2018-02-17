module Bot::DoTRoles
  module Isoc
    extend Discordrb::Commands::CommandContainer
    command :isoc do |event|
      isoc_id = 414117089612136450
      if event.user.roles.include?(isoc_id)
        event.user.remove_role(isoc_id)
        event.send "C rolü kaldırıldı."
      else
        event.user.add_role(isoc_id)
        event.send "C rolü eklendi."
      end
    end
  end
end
