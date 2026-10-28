class Box < Formula
  desc "Sandboxed git workspaces for development"
  homepage "https://github.com/yusukeshib/box"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yusukeshib/box/releases/download/v0.10.1/box-aarch64-darwin"
      sha256 "61a2b9fee53b377e39051509645bf2daff14ca8eddf41410fb65266dafee00b7"
    end
    on_intel do
      url "https://github.com/yusukeshib/box/releases/download/v0.10.1/box-x86_64-darwin"
      sha256 "7f2cfc37e1b62c1c2652b98686d484502cbdee3eea8107023876b16b5a1b3b04"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yusukeshib/box/releases/download/v0.10.1/box-aarch64-linux"
      sha256 "2e4991b4d16e69463e0ad8b7e55d86bdb2271eee95cf82162e034c8e3a688510"
    end
    on_intel do
      url "https://github.com/yusukeshib/box/releases/download/v0.10.1/box-x86_64-linux"
      sha256 "d7085d4ca68c8101db7f058deb145a07bb2f824946b53495f6d347cb545cac32"
    end
  end

  def install
    bin.install Dir["box-*-#{OS.mac? ? "darwin" : "linux"}"].first => "box"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/box --help")
  end
end
