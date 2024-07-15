class Loadjitsu < Formula
  desc "Loadjitsu - A load testing tool"
  homepage "https://github.com/LoadjitsuHQ/loadjitsu-releases"
  url "https://github.com/LoadjitsuHQ/loadjitsu-releases/releases/download/v0.0.6/Loadjitsu_aarch64.app.tar.gz"
  sha256 "6992ddd902f7e2e566362833a5d376d75f0688f3264b67b007589d2d3ad65e51"
  version "0.0.6"

  def install
    # Create the destination directory
    app_dir = "#{prefix}/Loadjitsu.app"
    mkdir_p app_dir

    # Extract the .app bundle into the destination directory
    system "tar", "-xvzf", cached_download, "-C", app_dir, "--strip-components", "1"
  end

  def caveats
    <<~EOS
      To use Loadjitsu, open it from the Applications folder or run:
        open #{opt_prefix}/Loadjitsu.app
    EOS
  end

  test do
    assert_predicate prefix/"Loadjitsu.app", :exist?, "Loadjitsu.app must exist"
  end
end