class Sonicradio < Formula
  desc "TUI radio player making use of Radio Browser API and Bubbletea"
  homepage "https://github.com/dancnb/sonicradio"
  license "MIT"
  head "https://github.com/dancnb/sonicradio.git"

  depends_on "go" => :build
  depends_on "ffmpeg"

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end
end
