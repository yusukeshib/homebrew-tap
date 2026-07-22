class Babysit < Formula
  desc "Wrap shell commands in a PTY for external AI agents"
  homepage "https://github.com/yusukeshib/babysit"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yusukeshib/babysit/releases/download/v#{version}/babysit-aarch64-darwin"
      sha256 "0931d898ff2881101a13f602c52ff477806dedf20375d31e606ce9a1d85f7ce1"
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
