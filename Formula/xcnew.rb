class Xcnew < Formula
  desc "Missing command-line interface to make a project for iOS Single View App"
  homepage "https://github.com/manicmaniac/xcnew"
  url "https://github.com/manicmaniac/xcnew/archive/0.6.1.tar.gz"
  sha256 "9f92205f7662b8401318798741fc439876e94bc93a1c9f98a63a810120d5f7a7"

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
