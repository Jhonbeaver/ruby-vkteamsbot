require_relative '../bot.rb'

module VKTeams

  class Bot
    def answerCallbackQuery queryId, text
      params = create_message_params '', nil, nil
      params['queryId'] = queryId
      params['text'] = text
      json_load Requests.get(API.answer_callback_query, params: params).body
    end
  end

end