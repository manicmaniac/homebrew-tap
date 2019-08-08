class Xcnew < Formula
  desc 'A command line interface to make a project for iOS Single View App.'
  homepage 'https://github.com/manicmaniac/xcnew'
  url 'https://github.com/manicmaniac/xcnew/archive/0.2.1.tar.gz'
  sha256 '395408a3dc9c3db2b5c200b8722a13a60898c861633b99e6e250186adffd1370'

  depends_on :xcode

  def install
    system 'make', 'install', "PREFIX='#{prefix}'"
  end

  test do
    system bin/'xcnew', 'Example', testpath/'Example'
    assert_predicate testpath/'Example/Example.xcodeproj/project.pbxproj', :exist?
  end
end
