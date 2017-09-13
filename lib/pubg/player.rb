module Pubg
  class Player < Base
    class << self
      def get(nickname)
        client.get("profile/pc/#{nickname}").body
      end
    end
  end
end
