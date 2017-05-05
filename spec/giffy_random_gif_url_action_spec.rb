describe Fastlane::Actions::GiffyRandomGifUrlAction do
  describe '#run' do
    before(:each) do
      require 'webmock/rspec'
      stub_request(:get, "http://api.giphy.com/v1/gifs/random?api_key=dc6zaTOxFJmzC&tag=cats").to_return(body: File.read('./spec/fixtures/random_gif_fixture.json'))
    end

    it 'returns URL to downsampled random gif' do
      url = Fastlane::FastFile.new.parse("lane :test do
          giffy_random_gif_url ({
            api_key: 'dc6zaTOxFJmzC',
            tag: 'cats'
          })
        end").runner.execute(:test)
      expect(url).to eq('http://media3.giphy.com/media/JQtBRzBr4y7q8/200w_d.gif')
    end

    it 'returns URL to original random gif' do
      url = Fastlane::FastFile.new.parse("lane :test do
          giffy_random_gif_url ({
            api_key: 'dc6zaTOxFJmzC',
            tag: 'cats',
            original_gif: true
          })
        end").runner.execute(:test)
      expect(url).to eq('http://media3.giphy.com/media/JQtBRzBr4y7q8/giphy.gif')
    end
  end
end
