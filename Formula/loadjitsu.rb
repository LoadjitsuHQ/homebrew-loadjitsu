class Loadjitsu < Formula
  desc "Loadjitsu - A load testing tool"
  homepage "https://github.com/LoadjitsuHQ/loadjitsu-releases"
  url "https://github.com/LoadjitsuHQ/loadjitsu-releases/releases/download/v0.0.6/Loadjitsu_aarch64.app.tar.gz"
  sha256 "f14abf3c7d01443a2d72c3d26b6e69a03ce5635e"
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