cask 'dash' do
  version '2.2.6'
  sha256 'a7de5e00528611f86d1024164b1b5d536ce039344b6ca3c211918c7458f7e412'

  url "https://kapeli.com/downloads/v#{version.major}/Dash.zip"
  name 'Dash'
  homepage 'https://kapeli.com/dash'

  auto_updates false

  app 'Dash.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                '~/Library/Application Support/Dash',
                '~/Library/Application Support/com.kapeli.dashdoc',
                '~/Library/Preferences/com.kapeli.dash.plist',
                '~/Library/Preferences/com.kapeli.dashdoc.plist',
              ]
end
