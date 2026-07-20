class Looop < Formula
  desc "Portable, Kubernetes-shaped control loop for work"
  homepage "https://github.com/yusukeshib/looop"
  version "0.64.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yusukeshib/looop/releases/download/v#{version}/looop-aarch64-darwin"
      sha256 "1180bc09741b124d4094d487093d1810b98e5eeb806599f2b1053d559156a8b3"
    end
    on_intel do
      url "https://github.com/yusukeshib/looop/releases/download/v#{version}/looop-x86_64-darwin"
      sha256 "c0dcb78c2e224ed0365bbfa2b41e5938729fbe658ddf296f24b752ac2019d632"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yusukeshib/looop/releases/download/v#{version}/looop-aarch64-linux"
      sha256 "22c1ba329980fa95c94df22187ebedbd49f5e92b292fbcf9833401f10561347d"
    end
    on_intel do
      url "https://github.com/yusukeshib/looop/releases/download/v#{version}/looop-x86_64-linux"
      sha256 "112fb0c2e2aca6b41e3925113726bb6a41b6a9128e41c8e55fef9700ff9343e3"
    end
  end

  def install
    bin.install Dir["looop-*-#{OS.mac? ? "darwin" : "linux"}"].first => "looop"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/looop --help")
  end
end
