class Xcnew < Formula
  desc 'A command line interface to make a project for iOS Single View App.'
  homepage 'https://github.com/manicmaniac/xcnew'
  url 'https://github.com/manicmaniac/xcnew/archive/0.4.0.tar.gz'
  sha256 'd8596a659c429d5d4d669480bd2b1f7aae02ed6881b9877192e97353bf9c6669'

  depends_on :xcode

  def install
    system 'make', 'install', "PREFIX='#{prefix}'"
  end

  test do
    system bin/'xcnew', 'Example', testpath/'Example'
    assert_predicate testpath/'Example/Example.xcodeproj/project.pbxproj', :exist?
  end
end
