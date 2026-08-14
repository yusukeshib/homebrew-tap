class Box < Formula
  desc "Sandboxed git workspaces for development"
  homepage "https://github.com/yusukeshib/box"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yusukeshib/box/releases/download/v0.6.0/box-aarch64-darwin"
      sha256 "a71ba9f4f4bf93b0b828c39d4e040623c40e35ff55067361113cceee6d7577e8"
    end
    on_intel do
      url "https://github.com/yusukeshib/box/releases/download/v0.6.0/box-x86_64-darwin"
      sha256 "9b50755651a6050decca3aa4f711b3488c4abd8ba38c58908a6cce185bc33c61"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yusukeshib/box/releases/download/v0.6.0/box-aarch64-linux"
      sha256 "f98c1b0373e8e60c9cf5b61cdd8bab3eab9f687ef7847aa89cc62c8865844cd8"
    end
    on_intel do
      url "https://github.com/yusukeshib/box/releases/download/v0.6.0/box-x86_64-linux"
      sha256 "42f62d134f25529848d29d63b391a0348fe30fe9f953caededc31531232db03c"
    end
  end

  def install
    bin.install Dir["box-*-#{OS.mac? ? "darwin" : "linux"}"].first => "box"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/box --help")
  end
end
