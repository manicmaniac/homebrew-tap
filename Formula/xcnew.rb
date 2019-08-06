class Xcnew < Formula
  desc 'A command line interface to make a project for iOS Single View App.'
  homepage 'https://github.com/manicmaniac/xcnew'
  url 'https://github.com/manicmaniac/xcnew/archive/0.1.1.tar.gz'
  sha256 '1d06b36ce0d5c8de9f1296e97725d52ecd7ccc6fa22d9d0e3237c3d3e6b2ca45'

  depends_on :xcode

  def install
    system 'make'
    system 'make', 'install', "PREFIX='#{prefix}'"
  end

  test do
    system bin/'xcnew', 'Example', testpath/'Example'
    assert_predicate testpath/'Example/Example.xcodeproj/project.pbxproj', :exist?
  end
end
