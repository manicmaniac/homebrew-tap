class Xcnew < Formula
  desc "Missing command-line interface to make a project for iOS Single View App"
  homepage "https://github.com/manicmaniac/xcnew"
  url "https://github.com/manicmaniac/xcnew/archive/0.5.2.tar.gz"
  sha256 "d21f8e537a61a9be0e5c9230987efdb972fdaf2892ecf805722fbf489c2f3fd5"

  depends_on :xcode

  def install
    system "make", "install", "PREFIX='#{prefix}'"
  end

  test do
    system bin/"xcnew", "Example", testpath/"Example"
    assert_predicate testpath/"Example/Example.xcodeproj/project.pbxproj", :exist?
  end
end
