module Eventbrite
  class Venue < APIResource
    def self.create(params={}, token=nil)
      response, token = Eventbrite.request(:post, self.create_url, token, params)
      Util.convert_to_eventbrite_object(response, token)
    end

    private

    def self.create_url
      url
    end
  end
end