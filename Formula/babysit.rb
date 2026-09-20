class Babysit < Formula
  desc "Wrap shell commands in a PTY for external AI agents"
  homepage "https://github.com/yusukeshib/babysit"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yusukeshib/babysit/releases/download/v#{version}/babysit-aarch64-darwin"
      sha256 "d1b3802dd69822c116933c2b913ecd6ed7ea2fe12583103ac74b1f88fd45bc6b"
    end
    on_intel do
      url "https://github.com/yusukeshib/babysit/releases/download/v#{version}/babysit-x86_64-darwin"
      sha256 "e8730bfc79adaf7aa3a31943467484c2c7a5b1c2516eba64e327b17a1c72938f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yusukeshib/babysit/releases/download/v#{version}/babysit-aarch64-linux"
      sha256 "e7c7649314bb50ae3d453325375ea996acbc9e425d36a8071746f7f753d6e3f2"
    end
    on_intel do
      url "https://github.com/yusukeshib/babysit/releases/download/v#{version}/babysit-x86_64-linux"
      sha256 "49ab679f69c801f51afb1d1d8ed3fc9f394a99a2f5c801e3d4e73fa0aab6c0ca"
    end
  end

  def install
    bin.install Dir["babysit-*-#{OS.mac? ? "darwin" : "linux"}"].first => "babysit"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/babysit --help")
  end
end
