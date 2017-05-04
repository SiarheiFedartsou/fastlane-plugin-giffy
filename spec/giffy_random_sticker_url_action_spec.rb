describe Fastlane::Actions::GiffyRandomStickerUrlAction do
  describe '#run' do
    before(:each) do
      require 'webmock/rspec'
      stub_request(:get, "http://api.giphy.com/v1/stickers/random?api_key=dc6zaTOxFJmzC&tag=cats").to_return(body: File.read('./spec/fixtures/random_sticker_fixture.json'))
    end

    it 'returns URL to downsampled random sticker' do
      url = Fastlane::FastFile.new.parse("lane :test do
          giffy_random_sticker_url ({
            api_key: 'dc6zaTOxFJmzC',
            tag: 'cats'
          })
        end").runner.execute(:test)
      expect(url).to eq('http://media1.giphy.com/media/l3N1m3sGa5K6s/200w_d.gif')
    end

    it 'returns URL to original random sticker' do
      url = Fastlane::FastFile.new.parse("lane :test do
          giffy_random_sticker_url ({
            api_key: 'dc6zaTOxFJmzC',
            tag: 'cats',
            original_gif: true
          })
        end").runner.execute(:test)
      expect(url).to eq('http://media1.giphy.com/media/l3N1m3sGa5K6s/giphy.gif')
    end
  end
end
