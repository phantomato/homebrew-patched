class Xcodes < Formula
  desc "The best command-line tool to install and switch Xcodes."
  homepage ""
  url "https://github.com/phantomato/xcodes/releases/download/1.4.2/xcodes.zip"
  sha256 "df1ae28c1fee678e8d07afe852b5f869097a2c49bf7b0508be19d1aa6bec46cb"
  license "MIT"
  head "https://github.com/phantomato/xcodes.git", branch: "main"
  depends_on :macos

  def install
    build.head? ? system("make", "install", "prefix=#{prefix}") : bin.install("xcodes")
  end

  test do
    system "#{bin}/xcodes"
  end
end
