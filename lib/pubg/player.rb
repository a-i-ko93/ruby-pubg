module Pubg
  class Player < Base
    class << self
      def by_nickname(nickname)
        client.get("profile/pc/#{nickname}").body
      end

      def by_steam_id(steam_id)
        client.get("search?steamId=#{steam_id}").body
      end
    end
  end
end
