class Box < Formula
  desc "Sandboxed git workspaces for development"
  homepage "https://github.com/yusukeshib/box"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yusukeshib/box/releases/download/v#{version}/box-aarch64-darwin"
      sha256 "4a7dfa51d28a1bb47a17fa8da103cc35989ef7b1226d8adbfb07d5e27e5ab4a9"
    end
    on_intel do
      url "https://github.com/yusukeshib/box/releases/download/v#{version}/box-x86_64-darwin"
      sha256 "e8d696634190f2d73ed14cbb83721fbb4592c1e92380ad27fa41c3a573b16260"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yusukeshib/box/releases/download/v#{version}/box-aarch64-linux"
      sha256 "1770eec973d31704b6e6b93e9570acb2b4dcf9b45f169f168f4d98725cbb5b7d"
    end
    on_intel do
      url "https://github.com/yusukeshib/box/releases/download/v#{version}/box-x86_64-linux"
      sha256 "7e925bbbf35cee923869912604ae029fd6c88fa7bcb1f20d7f85918c4b023873"
    end
  end

  def install
    bin.install Dir["box-*-#{OS.mac? ? "darwin" : "linux"}"].first => "box"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/box --help")
  end
end
