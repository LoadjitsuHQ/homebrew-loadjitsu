cask 'loadjitsu' do
  version '0.1.0'
  sha256 '2d38124877daecfe1db8a39cfe07816a60f7cabc381879ffee6ed4bbc748945c'

  url "https://github.com/LoadjitsuHQ/loadjitsu-releases/releases/download/v0.1.0/Loadjitsu_aarch64.app.tar.gz"
  name 'Loadjitsu'
  desc 'Loadjitsu - A load testing tool'
  homepage 'https://github.com/LoadjitsuHQ/loadjitsu-releases'

  app 'Loadjitsu.app'
end
