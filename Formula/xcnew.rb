class XCNew < Formula
  desc 'A command line interface to make a project for iOS Single View App.'
  homepage 'https://github.com/manicmaniac/xcnew'
  url 'https://github.com/manicmaniac/xcnew/archive/0.1.0.tar.gz'
  sha256 '7b498b4b01bf3433156a66060cee4bf7b25b15f7b56255fcd2408449e03afb76'

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
