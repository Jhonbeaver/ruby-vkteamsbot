require_relative '../bot.rb'
require 'json'

module VKTeams

  class Bot
    def edit_msg msg, msg_id, chat_id, format
      params = create_message_params msg, chat_id, nil
      params['msgId'] = msg_id
      params['format'] = format.to_json
      json_load Requests.get(API.edit_text, params: params).body
    end
  end

end