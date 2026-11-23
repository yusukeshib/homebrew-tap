class Box < Formula
  desc "Sandboxed git workspaces for development"
  homepage "https://github.com/yusukeshib/box"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yusukeshib/box/releases/download/v0.12.0/box-aarch64-darwin"
      sha256 "fc70e059279944c21971b42f2183be84b1601e8c1c61adce6dd29f44a5b6b60c"
    end
    on_intel do
      url "https://github.com/yusukeshib/box/releases/download/v0.12.0/box-x86_64-darwin"
      sha256 "9de8ae6d05b50d5558cc4233adaeb5fa47d4a9976a6dcc20b55a491e8004fdc1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yusukeshib/box/releases/download/v0.12.0/box-aarch64-linux"
      sha256 "4a803e13dbe3dc1c1ea94baa7f4ccef842868992b0fe321cc5ce41fed216fc9c"
    end
    on_intel do
      url "https://github.com/yusukeshib/box/releases/download/v0.12.0/box-x86_64-linux"
      sha256 "a92ca27936d4fcf454252035cc732f378d659d07dd9b2eaa7f254dcfb226e95b"
    end
  end

  def install
    bin.install Dir["box-*-#{OS.mac? ? "darwin" : "linux"}"].first => "box"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/box --help")
  end
end
