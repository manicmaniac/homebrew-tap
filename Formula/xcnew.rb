class Xcnew < Formula
  desc "Missing command-line interface to make a project for iOS Single View App"
  homepage "https://github.com/manicmaniac/xcnew"
  url "https://github.com/manicmaniac/xcnew/archive/refs/tags/0.7.0.tar.gz"
  sha256 "d6d296845882461451781a7d354acdb1419676c6dc45adb2d9afdc41ba5b8698"

  depends_on :xcode
  env :std

  def install
    system "make", "install", "PREFIX='#{prefix}'"
  end

  test do
    assert_path_exists man1/"xcnew.1"
    system bin/"xcnew", "Example", testpath/"Example"
    assert_path_exists testpath/"Example/Example.xcodeproj/project.pbxproj"
  end
end
