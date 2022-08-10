class Xcnew < Formula
  desc "Missing command-line interface to make a project for iOS Single View App"
  homepage "https://github.com/manicmaniac/xcnew"
  url "https://github.com/manicmaniac/xcnew/archive/0.6.2.tar.gz"
  sha256 "e5049a7ce045a004680d1cf62d20e1003350029e31b723ceb5c1bb52c6af4ce8"

  depends_on :xcode

  def install
    system "make", "install", "PREFIX='#{prefix}'"
  end

  test do
    assert_predicate man1/"xcnew.1", :exist?
    system bin/"xcnew", "Example", testpath/"Example"
    assert_predicate testpath/"Example/Example.xcodeproj/project.pbxproj", :exist?
  end
end
