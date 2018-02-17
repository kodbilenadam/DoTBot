module Bot::DiscordCommands
  module Ping
    extend Discordrb::Commands::CommandContainer
    command :ping do |event|
      ping_message = event.send('Pong!')
      ping_message.edit "Pong! I took #{(ping_message.timestamp - event.timestamp) * 1000.0} milisaniye to respond."
    end
  end
end
