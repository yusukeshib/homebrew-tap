class Looop < Formula
  desc "Portable, Kubernetes-shaped control loop for work"
  homepage "https://github.com/yusukeshib/looop"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yusukeshib/looop/releases/download/v#{version}/looop-aarch64-darwin"
      sha256 "1dd36b94f7191456471e1ddeef38a69a0c0d4e587b92848a0e81a85b35555683"
    end
    on_intel do
      url "https://github.com/yusukeshib/looop/releases/download/v#{version}/looop-x86_64-darwin"
      sha256 "09accf17813a26e97c42ad6202b4a1af2f9be71442a4716af52e44c9eb713627"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yusukeshib/looop/releases/download/v#{version}/looop-aarch64-linux"
      sha256 "f96f8e349a3e792d9ac422d59ecb5e773976b563e958d742bd8e265c3db731b5"
    end
    on_intel do
      url "https://github.com/yusukeshib/looop/releases/download/v#{version}/looop-x86_64-linux"
      sha256 "ec921f7103722f52e44a52612584e2784dfe801849ad3a9ee432e5ac8a792a7d"
    end
  end

  def install
    bin.install Dir["looop-*-#{OS.mac? ? "darwin" : "linux"}"].first => "looop"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/looop --help")
  end
end
