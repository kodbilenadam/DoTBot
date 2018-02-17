module Bot::DoTRoles
  module Java
    extend Discordrb::Commands::CommandContainer
    command :java do |event|
      java_id = 414117167920054283
      if event.user.roles.include?(java_id)
        event.user.remove_role(java_id)
        event.send "Java rolü kaldırıldı."
      else
        event.user.add_role(java_id)
        event.send "Java rolü eklendi."
      end
    end
  end
end
