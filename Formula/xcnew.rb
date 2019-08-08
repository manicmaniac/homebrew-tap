class Xcnew < Formula
  desc 'A command line interface to make a project for iOS Single View App.'
  homepage 'https://github.com/manicmaniac/xcnew'
  url 'https://github.com/manicmaniac/xcnew/archive/0.2.1.tar.gz'
  sha256 'de1d365328121972fcb7c75bed416a026693fb799065633210898ca4e3b02a8b'

  depends_on :xcode

  def install
    system 'make', 'install', "PREFIX='#{prefix}'"
  end

  test do
    system bin/'xcnew', 'Example', testpath/'Example'
    assert_predicate testpath/'Example/Example.xcodeproj/project.pbxproj', :exist?
  end
end
