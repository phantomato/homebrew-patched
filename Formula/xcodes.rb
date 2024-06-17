class Xcodes < Formula
  desc "The best command-line tool to install and switch Xcodes."
  homepage ""
  url "https://github.com/phantomato/xcodes.git", tag: "1.4.2"
  license "MIT"
  head "https://github.com/phantomato/xcodes.git", branch: "main"

  bottle do
    root_url "https://github.com/phantomato/xcodes/releases/download/1.4.2"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "244acd990847401e65286daa3ff5abb16684625b373bfb9bf0dd755118b209df"
    sha256 cellar: :any_skip_relocation, arm64_mojave: "244acd990847401e65286daa3ff5abb16684625b373bfb9bf0dd755118b209df"
    sha256 cellar: :any_skip_relocation, mojave:       "244acd990847401e65286daa3ff5abb16684625b373bfb9bf0dd755118b209df"    
  end

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/xcodes"
  end
end
