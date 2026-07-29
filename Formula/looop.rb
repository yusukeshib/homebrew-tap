class Looop < Formula
  desc "Portable, Kubernetes-shaped control loop for work"
  homepage "https://github.com/yusukeshib/looop"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yusukeshib/looop/releases/download/v#{version}/looop-aarch64-darwin"
      sha256 "1cab4a7ce5c6b7a054d7c05470a963d599d3296a00cf4b7fcbcf47e11e0f790b"
    end
    on_intel do
      url "https://github.com/yusukeshib/looop/releases/download/v#{version}/looop-x86_64-darwin"
      sha256 "097f8332797df29ceed3f756c49b1a1b8d02c55c0e8b982fc35142c97c6abfd5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yusukeshib/looop/releases/download/v#{version}/looop-aarch64-linux"
      sha256 "735f9a36d5ab93ef33a276a811bb5d0da527c181aa27e88e4d1c2ec6c88ba7a1"
    end
    on_intel do
      url "https://github.com/yusukeshib/looop/releases/download/v#{version}/looop-x86_64-linux"
      sha256 "156221740880c0846715dfdfcbcd006e47f5c90309bd314ca1f70d4877107632"
    end
  end

  def install
    bin.install Dir["looop-*-#{OS.mac? ? "darwin" : "linux"}"].first => "looop"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/looop --help")
  end
end
