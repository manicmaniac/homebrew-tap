class Xcnew < Formula
  desc "Missing command-line interface to make a project for iOS Single View App"
  homepage "https://github.com/manicmaniac/xcnew"
  url "https://github.com/manicmaniac/xcnew/archive/0.5.3.tar.gz"
  sha256 "9707c5715ef599c022b90f1ba2e310db44085f2fec55fdf336d2b7e250bea2ed"

  depends_on :xcode

  def install
    system "make", "install", "PREFIX='#{prefix}'"
  end

  test do
    system bin/"xcnew", "Example", testpath/"Example"
    assert_predicate testpath/"Example/Example.xcodeproj/project.pbxproj", :exist?
  end
end
