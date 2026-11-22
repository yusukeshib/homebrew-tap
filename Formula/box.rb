class Box < Formula
  desc "Sandboxed git workspaces for development"
  homepage "https://github.com/yusukeshib/box"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yusukeshib/box/releases/download/v0.11.0/box-aarch64-darwin"
      sha256 "de87d8cba124b976b18f8b6c73b25d7d600d090d061f5c5597d3bd75b0fd0ffc"
    end
    on_intel do
      url "https://github.com/yusukeshib/box/releases/download/v0.11.0/box-x86_64-darwin"
      sha256 "fdc7884639c2d5dd7aa59ec435332b3bbd554994356853b67f68062cc64ef8d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yusukeshib/box/releases/download/v0.11.0/box-aarch64-linux"
      sha256 "3bf7ddf8885e9f57d69a4a256c42d45830d0b0a3b7a3a60552f2abfe3d0c7fee"
    end
    on_intel do
      url "https://github.com/yusukeshib/box/releases/download/v0.11.0/box-x86_64-linux"
      sha256 "b19875e8c051b2fc8c68ac357434f75ce9944a6f3f161f064ff89842c17acda3"
    end
  end

  def install
    bin.install Dir["box-*-#{OS.mac? ? "darwin" : "linux"}"].first => "box"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/box --help")
  end
end
