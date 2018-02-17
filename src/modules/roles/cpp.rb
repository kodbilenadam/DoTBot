module Bot::DoTRoles
  module Cpp
    extend Discordrb::Commands::CommandContainer
    command :cpp do |event|
      cpp_id = 414117019433172993
      if event.user.roles.include?(cpp_id)
        event.user.remove_role(cpp_id)
        event.send "C++ rolü kaldırıldı."
      else
        event.user.add_role(cpp_id)
        event.send "C++ rolü eklendi."
      end
    end
  end
end
