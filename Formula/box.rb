class Box < Formula
  desc "Sandboxed git workspaces for development"
  homepage "https://github.com/yusukeshib/box"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yusukeshib/box/releases/download/v0.10.0/box-aarch64-darwin"
      sha256 "eb19958e9a490636867baa3da6be79177905d43f602cc93e919a7f89ad4dae96"
    end
    on_intel do
      url "https://github.com/yusukeshib/box/releases/download/v0.10.0/box-x86_64-darwin"
      sha256 "b08a0c544970874a54c15df5806ee4f4c78661be9bdab563fc2edae8cca27aba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yusukeshib/box/releases/download/v0.10.0/box-aarch64-linux"
      sha256 "06f720997f2c60418844fecd24a23f7dda04260c7b30b657072d9f999dc3ee43"
    end
    on_intel do
      url "https://github.com/yusukeshib/box/releases/download/v0.10.0/box-x86_64-linux"
      sha256 "34022aad71c1e3c41f0810d651793ae5d42188aea27fa2469832fd31fd49f449"
    end
  end

  def install
    bin.install Dir["box-*-#{OS.mac? ? "darwin" : "linux"}"].first => "box"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/box --help")
  end
end
