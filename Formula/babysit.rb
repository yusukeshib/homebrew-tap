class Babysit < Formula
  desc "Wrap shell commands in a PTY for external AI agents"
  homepage "https://github.com/yusukeshib/babysit"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yusukeshib/babysit/releases/download/v#{version}/babysit-aarch64-darwin"
      sha256 "59b7bf4bbb0a080aedb8df075d8dad423e8c6de8f118876c6e014d3b512212de"
    end
    on_intel do
      url "https://github.com/yusukeshib/babysit/releases/download/v#{version}/babysit-x86_64-darwin"
      sha256 "c185931507a2cd6f8235ac04e21f15da479abbf411c1b3279f091e7b9eadc133"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yusukeshib/babysit/releases/download/v#{version}/babysit-aarch64-linux"
      sha256 "c31f0dfd92047b223d9770712ddd41932ef76765ee8e8e22f335a62337d0e569"
    end
    on_intel do
      url "https://github.com/yusukeshib/babysit/releases/download/v#{version}/babysit-x86_64-linux"
      sha256 "efb93e47c0fb3eaab09fe669e36ad14e0b42b75f6b3f6a49823aedcb1f7035d4"
    end
  end

  def install
    bin.install Dir["babysit-*-#{OS.mac? ? "darwin" : "linux"}"].first => "babysit"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/babysit --help")
  end
end
