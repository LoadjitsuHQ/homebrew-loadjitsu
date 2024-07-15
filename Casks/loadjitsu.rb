cask 'loadjitsu' do
  version '0.0.6'
  sha256 '6992ddd902f7e2e566362833a5d376d75f0688f3264b67b007589d2d3ad65e51'

  url "https://github.com/LoadjitsuHQ/loadjitsu-releases/releases/download/v0.0.6/Loadjitsu_aarch64.app.tar.gz"
  name 'Loadjitsu'
  desc 'Loadjitsu - A load testing tool'
  homepage 'https://github.com/LoadjitsuHQ/loadjitsu-releases'

  app 'Loadjitsu.app'
end
