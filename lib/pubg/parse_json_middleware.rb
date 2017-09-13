module Pubg
  class ParseJsonMiddleware < FaradayMiddleware::ParseJson
    define_parser do |body|
      ::JSON.parse(body, object_class: OpenStruct) unless body.strip.empty?
    end
  end
end
