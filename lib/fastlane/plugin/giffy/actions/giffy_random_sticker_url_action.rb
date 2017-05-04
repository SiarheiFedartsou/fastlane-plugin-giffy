module Fastlane
  module Actions
    class GiffyRandomStickerUrlAction < Action
      def self.run(params)
        return Helper::GiffyHelper.get_random_gif_url('stickers', params)
      end

      def self.description
        "Allows to obtain URL to some random GIF sticker from Giffy.com"
      end

      def self.authors
        ["SiarheiFiedartsou"]
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :api_key,
                                  env_name: "GIFFY_API_KEY",
                               description: "API key for Giffy API",
                                  optional: false,
                                      type: String),
          FastlaneCore::ConfigItem.new(key: :original_gif,
                               description: "If true returns URL to not downsampled GIF with much larger size",
                             default_value: false,
                                  optional: true,
                                 is_string: false),
          FastlaneCore::ConfigItem.new(key: :tag,
                               description: "Tag by which GIFs will be searched",
                                  optional: false,
                                      type: String)

        ]
      end

      def self.is_supported?(platform)
        true
      end
    end
  end
end
