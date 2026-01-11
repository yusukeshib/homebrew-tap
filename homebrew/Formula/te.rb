# Homebrew Formula for te
#
# To use this formula, create a new repository named 'homebrew-tap' and copy
# this file to Formula/te.rb in that repository.
#
# Users can then install with:
#   brew tap yusukeshib/tap
#   brew install te
#
# After each release, update the version and sha256 values below.
# Generate sha256 with: shasum -a 256 <file>

class Te < Formula
  desc "Interactive TUI wrapper for CLI commands - Your helping hand for command-line interfaces"
  homepage "https://github.com/yusukeshib/te"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yusukeshib/te/releases/download/v#{version}/te-aarch64-apple-darwin.tar.gz"
      # TODO: Update sha256 after first release
      sha256 "PLACEHOLDER_AARCH64_DARWIN"
    end
    on_intel do
      url "https://github.com/yusukeshib/te/releases/download/v#{version}/te-x86_64-apple-darwin.tar.gz"
      # TODO: Update sha256 after first release
      sha256 "PLACEHOLDER_X86_64_DARWIN"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yusukeshib/te/releases/download/v#{version}/te-aarch64-unknown-linux-gnu.tar.gz"
      # TODO: Update sha256 after first release
      sha256 "PLACEHOLDER_AARCH64_LINUX"
    end
    on_intel do
      url "https://github.com/yusukeshib/te/releases/download/v#{version}/te-x86_64-unknown-linux-gnu.tar.gz"
      # TODO: Update sha256 after first release
      sha256 "PLACEHOLDER_X86_64_LINUX"
    end
  end

  def install
    bin.install "te"
  end

  test do
    assert_match "te", shell_output("#{bin}/te --help")
  end
end
