class Xcnew < Formula
  desc "Missing command-line interface to make a project for iOS Single View App"
  homepage "https://github.com/manicmaniac/xcnew"
  url "https://github.com/manicmaniac/xcnew/archive/0.6.4.tar.gz"
  sha256 "c97c11109eaf4ff588e21e855e4db3a9c40f72351292ed0f0cd2aeea9d4a0c0e"

  depends_on :xcode
  env :std

  def install
    system "make", "install", "PREFIX='#{prefix}'"
  end

  test do
    assert_predicate man1/"xcnew.1", :exist?
    system bin/"xcnew", "Example", testpath/"Example"
    assert_predicate testpath/"Example/Example.xcodeproj/project.pbxproj", :exist?
  end
end
