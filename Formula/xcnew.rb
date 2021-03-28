class Xcnew < Formula
  desc "Missing command-line interface to make a project for iOS Single View App"
  homepage "https://github.com/manicmaniac/xcnew"
  url "https://github.com/manicmaniac/xcnew/archive/0.5.0.tar.gz"
  sha256 "3bcd01f0dc97c073b00845fb08da6b46d4f7fd27b55b4c314e89c0970a85373f"

  depends_on :xcode

  def install
    system "make", "install", "PREFIX='#{prefix}'"
  end

  test do
    system bin/"xcnew", "Example", testpath/"Example"
    assert_predicate testpath/"Example/Example.xcodeproj/project.pbxproj", :exist?
  end
end
