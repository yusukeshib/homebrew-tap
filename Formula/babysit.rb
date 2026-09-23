class Babysit < Formula
  desc "Wrap shell commands in a PTY for external AI agents"
  homepage "https://github.com/yusukeshib/babysit"
  version "0.14.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yusukeshib/babysit/releases/download/v#{version}/babysit-aarch64-darwin"
      sha256 "b3a7ecf4b192b21abc3f90208a9695d846a1d39d3533a4a59cf73349966c76d5"
    end
    on_intel do
      url "https://github.com/yusukeshib/babysit/releases/download/v#{version}/babysit-x86_64-darwin"
      sha256 "d2e0f0f4485d10ece6839350e64a2da405d7589b5b3a022c32e75ea5f74a5c6f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yusukeshib/babysit/releases/download/v#{version}/babysit-aarch64-linux"
      sha256 "98c13116ecc2d3e87406d9216df4f43294738602b6df6e91f4752712325e4887"
    end
    on_intel do
      url "https://github.com/yusukeshib/babysit/releases/download/v#{version}/babysit-x86_64-linux"
      sha256 "d719d9400dba9be4017dfc4597cab7b3f2e067a92d8e6e3358c60380fb202f36"
    end
  end

  def install
    bin.install Dir["babysit-*-#{OS.mac? ? "darwin" : "linux"}"].first => "babysit"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/babysit --help")
  end
end
