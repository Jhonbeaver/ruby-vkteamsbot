require_relative '../../bot.rb'

module ICQ

  class Bot
    def get_admins chat_id
      _ = JSON::load Requests.get(
        URLS_API::GET_ADMINS, params: base_req(chat_id)).body
      _['admins']
    end
  end

end