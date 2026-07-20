class Box < Formula
  desc "Sandboxed git workspaces for development"
  homepage "https://github.com/yusukeshib/box"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yusukeshib/box/releases/download/v#{version}/box-aarch64-darwin"
      sha256 "50332c37e817ae93c315b1e18c6f968aecab25a9279597c1dd6d508f127b13ef"
    end
    on_intel do
      url "https://github.com/yusukeshib/box/releases/download/v#{version}/box-x86_64-darwin"
      sha256 "ded9817b7d480da666d2b98b47d49a8e554aca9b0b65ea0b98000637fef6695f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yusukeshib/box/releases/download/v#{version}/box-aarch64-linux"
      sha256 "8f813023c1e864625383c83f0c6c156fccba9a9415966315d7a61b8171e4201c"
    end
    on_intel do
      url "https://github.com/yusukeshib/box/releases/download/v#{version}/box-x86_64-linux"
      sha256 "6d9093405d286c130095362e1334431ecb7a93590a114260ac9d5a7f56081d0d"
    end
  end

  def install
    bin.install Dir["box-*-#{OS.mac? ? "darwin" : "linux"}"].first => "box"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/box --help")
  end
end
