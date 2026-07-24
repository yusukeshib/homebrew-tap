class Looop < Formula
  desc "Portable, Kubernetes-shaped control loop for work"
  homepage "https://github.com/yusukeshib/looop"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yusukeshib/looop/releases/download/v#{version}/looop-aarch64-darwin"
      sha256 "f2459a3966640b639e2b58f4ef180a0e4b7eed4c81c4bd3e65c504165bb1cebd"
    end
    on_intel do
      url "https://github.com/yusukeshib/looop/releases/download/v#{version}/looop-x86_64-darwin"
      sha256 "ffbb587eaaec4598fc6e83fa2c05c1c854f1a5a5b586a65e8a21e0def1cbda91"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yusukeshib/looop/releases/download/v#{version}/looop-aarch64-linux"
      sha256 "3572c171c6bb41d732c8de559167b31afbc418df3ec532145fccf47e6bb9f8e8"
    end
    on_intel do
      url "https://github.com/yusukeshib/looop/releases/download/v#{version}/looop-x86_64-linux"
      sha256 "261786abab808383ab30cb07ff583b271293b7bc886e0d1f5d0292aa82e4925f"
    end
  end

  def install
    bin.install Dir["looop-*-#{OS.mac? ? "darwin" : "linux"}"].first => "looop"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/looop --help")
  end
end
