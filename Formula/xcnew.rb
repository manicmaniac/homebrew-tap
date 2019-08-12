class Xcnew < Formula
  desc 'A command line interface to make a project for iOS Single View App.'
  homepage 'https://github.com/manicmaniac/xcnew'
  url 'https://github.com/manicmaniac/xcnew/archive/0.3.2.tar.gz'
  sha256 '91911d20252cd95b8445961c7c8ae9098c096c7e734fd3cac04d8ceff1b50f3f'

  depends_on :xcode

  def install
    system 'make', 'install', "PREFIX='#{prefix}'"
  end

  test do
    system bin/'xcnew', 'Example', testpath/'Example'
    assert_predicate testpath/'Example/Example.xcodeproj/project.pbxproj', :exist?
  end
end
