class Box < Formula
  desc "Sandboxed git workspaces for development"
  homepage "https://github.com/yusukeshib/box"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yusukeshib/box/releases/download/v0.7.0/box-aarch64-darwin"
      sha256 "bac23d200fda7529b8d5668ee6c06227b01b65bf35e9c9384b38dbeb7a5a686e"
    end
    on_intel do
      url "https://github.com/yusukeshib/box/releases/download/v0.7.0/box-x86_64-darwin"
      sha256 "2b44d8bfd8b77f0b5cbdafc5948922ae005f89efe1810ca84c1bd2612a37f4bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yusukeshib/box/releases/download/v0.7.0/box-aarch64-linux"
      sha256 "f42f8adef7e2e6557383a74699831c50515977440fbb9b6b3d08891db02178ac"
    end
    on_intel do
      url "https://github.com/yusukeshib/box/releases/download/v0.7.0/box-x86_64-linux"
      sha256 "f6af68a28953b9ab883447956323c44e4c1693e9cf3149b720e66864c7a555de"
    end
  end

  def install
    bin.install Dir["box-*-#{OS.mac? ? "darwin" : "linux"}"].first => "box"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/box --help")
  end
end
