module Eventbrite
  class Event < APIResource
    def self.search(params={}, token=nil)
      response, token = Eventbrite.request(:get, self.search_url, token, params)
      Util.convert_to_eventbrite_object(response, token)
    end

    def self.create(params={}, token=nil)
      response, token = Eventbrite.request(:post, self.create_url, token, params)
      Util.convert_to_eventbrite_object(response, token)
    end

    private

    def self.search_url
      url + '/search'
    end

    def self.create_url
      url
    end
  end
end
