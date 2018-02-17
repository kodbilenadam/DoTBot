module Bot::DoTRoles
  module Php
    extend Discordrb::Commands::CommandContainer
    command :php do |event|
      php_id = 414117173074722836
      if event.user.roles.include?(php_id)
        event.user.remove_role(php_id)
        event.send "PHP rolü kaldırıldı."
      else
        event.user.add_role(php_id)
        event.send "PHP rolü eklendi."
      end
    end
  end
end
