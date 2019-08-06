class Xcnew < Formula
  desc 'A command line interface to make a project for iOS Single View App.'
  homepage 'https://github.com/manicmaniac/xcnew'
  url 'https://github.com/manicmaniac/xcnew/archive/0.1.0.tar.gz'
  sha256 '3aabb27e627a7f2bf412c2b59ace7b0c73422e1592b288d8fa18b4568875fa74'

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
