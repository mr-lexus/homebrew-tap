class Wireseer < Formula
  desc "Local-first network discovery, identity, and history for the terminal"
  homepage "https://github.com/mr-lexus/wireseer"
  url "https://github.com/mr-lexus/wireseer/releases/download/v0.1.0/wireseer-0.1.0.tar.gz"
  sha256 "af5e2f3be29b360c09355dd9ee11c64c63b0aee6f8dc1038a2d23cb47318c1e1"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wireseer --version")
    assert_match "local-first LAN inventory", shell_output("#{bin}/wireseer --help")
  end
end
