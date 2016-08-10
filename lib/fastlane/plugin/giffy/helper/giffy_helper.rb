module Fastlane
  module Helper
    class GiffyHelper
      # class methods that you define here become available in your action
      # as `Helper::GiffyHelper.your_method`
      #


      def self.get_random_gif_url(gifs_or_stickers, params)
        require 'net/http'
        require 'json'
        begin
          escaped_tag = URI.escape(params[:tag])
          uri = URI("http://api.giphy.com/v1/#{gifs_or_stickers}/random?api_key=#{params[:api_key]}&tag=#{escaped_tag}")
          json_body = Net::HTTP.get(uri)
          json_hash = JSON.parse(json_body)

          puts json_hash.to_s
          if params[:original_gif]
            return json_hash['data']['image_url']
          else
            return json_hash['data']['fixed_width_downsampled_url']
          end
        rescue
          UI.error('Something went wrong...')
        end
      end
    end
  end
end
