class Loadjitsu < Formula
  desc "Loadjitsu - A load testing tool"
  homepage "https://github.com/LoadjitsuHQ/loadjitsu-releases"
  url "https://github.com/LoadjitsuHQ/loadjitsu-releases/releases/download/v0.1.0/Loadjitsu_aarch64.app.tar.gz"
  sha256 "2d38124877daecfe1db8a39cfe07816a60f7cabc381879ffee6ed4bbc748945c"
  version "0.1.0"

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
  # Link the app into the Applications directory
  def post_install
    system "ln", "-sf", "#{opt_prefix}/Loadjitsu.app", "/Applications/Loadjitsu.app"
  end
end