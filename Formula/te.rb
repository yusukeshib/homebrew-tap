class Te < Formula
  desc "Interactive TUI wrapper for CLI commands - Your helping hand for command-line interfaces"
  homepage "https://github.com/yusukeshib/te"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yusukeshib/te/releases/download/v#{version}/te-aarch64-apple-darwin.tar.gz"
      sha256 "998ea525823ed741540197626f2234acb108d0c50ece4194a97aea12166e8276"
    end
    on_intel do
      url "https://github.com/yusukeshib/te/releases/download/v#{version}/te-x86_64-apple-darwin.tar.gz"
      sha256 "1babd33feb3ea86d5368d3db519d2c6b0d51ad3368ba690b9a78989a0376642b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yusukeshib/te/releases/download/v#{version}/te-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "89b1c82ad68e36e79f814e4d5bc4238aff5b6054fac40990502cbbfe9f2aaa4a"
    end
    on_intel do
      url "https://github.com/yusukeshib/te/releases/download/v#{version}/te-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d0b069b2ea183437ccc116348737feaf65d95c8f07137ab6daac2903ea415d1f"
    end
  end

  def install
    bin.install "te"
  end

  test do
    assert_match "te", shell_output("#{bin}/te --help")
  end
end
