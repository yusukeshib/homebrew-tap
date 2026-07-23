class Looop < Formula
  desc "Portable, Kubernetes-shaped control loop for work"
  homepage "https://github.com/yusukeshib/looop"
  version "0.67.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yusukeshib/looop/releases/download/v#{version}/looop-aarch64-darwin"
      sha256 "07f1ed356341b1d32cc380b8dd40d3e69f74501d8a17b94359f8d745ffa5a035"
    end
    on_intel do
      url "https://github.com/yusukeshib/looop/releases/download/v#{version}/looop-x86_64-darwin"
      sha256 "ca4597aa85d44e8ba89818a862ea40030b9c6f6fcbfc89699a3981cc4915b04b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yusukeshib/looop/releases/download/v#{version}/looop-aarch64-linux"
      sha256 "d5859f2e9b9ee0cef523feb49dc39c653f37deeab71c64c3a88cd38c137684ee"
    end
    on_intel do
      url "https://github.com/yusukeshib/looop/releases/download/v#{version}/looop-x86_64-linux"
      sha256 "c4b991a15b127cab4e3e30e40a4c8d3ae64fd12a2875ebc8d58d92ee6703ab5b"
    end
  end

  def install
    bin.install Dir["looop-*-#{OS.mac? ? "darwin" : "linux"}"].first => "looop"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/looop --help")
  end
end
