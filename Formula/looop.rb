class Looop < Formula
  desc "Portable, Kubernetes-shaped control loop for work"
  homepage "https://github.com/yusukeshib/looop"
  version "0.66.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yusukeshib/looop/releases/download/v#{version}/looop-aarch64-darwin"
      sha256 "ec6819e1433ec508374dc2acf5591e9af99cdbd05bcef3f26b90620e14ae3d26"
    end
    on_intel do
      url "https://github.com/yusukeshib/looop/releases/download/v#{version}/looop-x86_64-darwin"
      sha256 "da34a5b739a6b3013baa1001d0294205d6bcd754fa7b0cc6ec3d8c08a947bdad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yusukeshib/looop/releases/download/v#{version}/looop-aarch64-linux"
      sha256 "283047c3e0480fd840baf82936a21d45de3258768ffee4a0dd711fc2f658d0e9"
    end
    on_intel do
      url "https://github.com/yusukeshib/looop/releases/download/v#{version}/looop-x86_64-linux"
      sha256 "ccb9b523d8faabbcd6356cd4cf8fe4094beac23a5b0477dc58f3e0007f18dd8e"
    end
  end

  def install
    bin.install Dir["looop-*-#{OS.mac? ? "darwin" : "linux"}"].first => "looop"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/looop --help")
  end
end
