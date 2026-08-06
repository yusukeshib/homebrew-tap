class Box < Formula
  desc "Sandboxed git workspaces for development"
  homepage "https://github.com/yusukeshib/box"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yusukeshib/box/releases/download/v0.5.2/box-aarch64-darwin"
      sha256 "03a234df18789d6e8c761c2b79a41fa099d89571663bf7df3e7206207808724d"
    end
    on_intel do
      url "https://github.com/yusukeshib/box/releases/download/v0.5.2/box-x86_64-darwin"
      sha256 "6a57f1035b9ad25a83610440c7d94fd24b410d09864b3412ae6c38a6ee448cb6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yusukeshib/box/releases/download/v0.5.2/box-aarch64-linux"
      sha256 "82d3c5832ecfdeefe7ae02e235f2bd276be75aff39b955d1586cbe0f6b74e6dc"
    end
    on_intel do
      url "https://github.com/yusukeshib/box/releases/download/v0.5.2/box-x86_64-linux"
      sha256 "597190c84eb82eb7a258ba61b927aa0187715234ce46ecd5c61ce2094b248c6f"
    end
  end

  def install
    bin.install Dir["box-*-#{OS.mac? ? "darwin" : "linux"}"].first => "box"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/box --help")
  end
end
