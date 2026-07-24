class Looop < Formula
  desc "Portable, Kubernetes-shaped control loop for work"
  homepage "https://github.com/yusukeshib/looop"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yusukeshib/looop/releases/download/v#{version}/looop-aarch64-darwin"
      sha256 "1f7c12fd760e00b0b93d3b0d22919dc73ae2c6c3170a3a2d9f6675437a1ba67b"
    end
    on_intel do
      url "https://github.com/yusukeshib/looop/releases/download/v#{version}/looop-x86_64-darwin"
      sha256 "064571ca4220b260f9d0f41d65ae19216157b3a73baf95cba40ce2d5fb57e96f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yusukeshib/looop/releases/download/v#{version}/looop-aarch64-linux"
      sha256 "1684e8aa1ec3be1ee8d023d1da1d7cd28060f600f9bb34bd26a5d53573606a6a"
    end
    on_intel do
      url "https://github.com/yusukeshib/looop/releases/download/v#{version}/looop-x86_64-linux"
      sha256 "2d7ae2d4693dd34f66ef6f8879e170258251dce821274431b9b0316d62aa67c5"
    end
  end

  def install
    bin.install Dir["looop-*-#{OS.mac? ? "darwin" : "linux"}"].first => "looop"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/looop --help")
  end
end
