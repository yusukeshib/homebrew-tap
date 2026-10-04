class Babysit < Formula
  desc "Wrap shell commands in a PTY for external AI agents"
  homepage "https://github.com/yusukeshib/babysit"
  version "0.14.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yusukeshib/babysit/releases/download/v#{version}/babysit-aarch64-darwin"
      sha256 "1b293424dda836b810b29943a47765ee41a940540080ebadebd8d7492e9c9f08"
    end
    on_intel do
      url "https://github.com/yusukeshib/babysit/releases/download/v#{version}/babysit-x86_64-darwin"
      sha256 "e5f514b53a74b7995e080547af1268442bcaed801f42544a5fd32ed9d3313483"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yusukeshib/babysit/releases/download/v#{version}/babysit-aarch64-linux"
      sha256 "8786c0cdb0fe930cd8925650e618bcdcd15c7e211613843e9c20ff8665c03db5"
    end
    on_intel do
      url "https://github.com/yusukeshib/babysit/releases/download/v#{version}/babysit-x86_64-linux"
      sha256 "19bd1d12a864726ffc7c19a9a91e5cf52cb4da58948120e09e382b7946459783"
    end
  end

  def install
    bin.install Dir["babysit-*-#{OS.mac? ? "darwin" : "linux"}"].first => "babysit"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/babysit --help")
  end
end
