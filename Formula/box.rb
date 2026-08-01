class Box < Formula
  desc "Sandboxed git workspaces for development"
  homepage "https://github.com/yusukeshib/box"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yusukeshib/box/releases/download/v0.5.1/box-aarch64-darwin"
      sha256 "acf197e01e73d824047290b385d95514add27b1a7541109171e993dd481d1384"
    end
    on_intel do
      url "https://github.com/yusukeshib/box/releases/download/v0.5.1/box-x86_64-darwin"
      sha256 "e979569234e8546820155bc543295a487514cfc6eefeb9c7b72d6690ff3db012"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yusukeshib/box/releases/download/v0.5.1/box-aarch64-linux"
      sha256 "c4cc13775b9915ccd8522bcbcefd0ba06a40f1a04fe9c25d144c433749dd5e2b"
    end
    on_intel do
      url "https://github.com/yusukeshib/box/releases/download/v0.5.1/box-x86_64-linux"
      sha256 "09ceacf7cefc124c2fc2d02e22b814b3b0825b75d6148802ce80f172ee5cc3de"
    end
  end

  def install
    bin.install Dir["box-*-#{OS.mac? ? "darwin" : "linux"}"].first => "box"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/box --help")
  end
end
