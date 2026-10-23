class Box < Formula
  desc "Sandboxed git workspaces for development"
  homepage "https://github.com/yusukeshib/box"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yusukeshib/box/releases/download/v0.8.0/box-aarch64-darwin"
      sha256 "5fca3214816e7e39c96ba406d7c4f2d2f2503eee5b71d402e21e5a901c79b771"
    end
    on_intel do
      url "https://github.com/yusukeshib/box/releases/download/v0.8.0/box-x86_64-darwin"
      sha256 "47c811107ea1b06991c3562f3e4229896792bcd1c06a0821e1278f5230b59e25"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yusukeshib/box/releases/download/v0.8.0/box-aarch64-linux"
      sha256 "90fddb25092783911fb7a9dfa71e4c8da47470651ea2655aec80677bf21a1405"
    end
    on_intel do
      url "https://github.com/yusukeshib/box/releases/download/v0.8.0/box-x86_64-linux"
      sha256 "3186b6407787f89d95390ba331019984a516f0a3051304ff77b3f9046ecd59a2"
    end
  end

  def install
    bin.install Dir["box-*-#{OS.mac? ? "darwin" : "linux"}"].first => "box"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/box --help")
  end
end
