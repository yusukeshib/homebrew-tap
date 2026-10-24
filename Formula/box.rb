class Box < Formula
  desc "Sandboxed git workspaces for development"
  homepage "https://github.com/yusukeshib/box"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yusukeshib/box/releases/download/v0.9.0/box-aarch64-darwin"
      sha256 "157ea7daccf06dd2ad4b81bb0c1f9cb0d2722bfd95a579815cb39f32746257a8"
    end
    on_intel do
      url "https://github.com/yusukeshib/box/releases/download/v0.9.0/box-x86_64-darwin"
      sha256 "448cdf947594b00b423211e03d5de943ee7852892ad84e091dcb3c2076a3ef18"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yusukeshib/box/releases/download/v0.9.0/box-aarch64-linux"
      sha256 "8b136d252c099430b45937ce100bd30a6250e1cc0b329deb3a9994e488c3ae22"
    end
    on_intel do
      url "https://github.com/yusukeshib/box/releases/download/v0.9.0/box-x86_64-linux"
      sha256 "4008df1126f409ea10284564e84b8d5a2a3840737a398100ca6cc5cf8c77163b"
    end
  end

  def install
    bin.install Dir["box-*-#{OS.mac? ? "darwin" : "linux"}"].first => "box"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/box --help")
  end
end
