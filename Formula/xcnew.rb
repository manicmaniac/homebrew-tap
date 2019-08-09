class Xcnew < Formula
  desc 'A command line interface to make a project for iOS Single View App.'
  homepage 'https://github.com/manicmaniac/xcnew'
  url 'https://github.com/manicmaniac/xcnew/archive/0.3.0.tar.gz'
  sha256 'ddc41bc9cf7d6d3b7eadc54ab724674387af328b5842e7160f7be4579fe4f3ce'

  depends_on :xcode

  def install
    system 'make', 'install', "PREFIX='#{prefix}'"
  end

  test do
    system bin/'xcnew', 'Example', testpath/'Example'
    assert_predicate testpath/'Example/Example.xcodeproj/project.pbxproj', :exist?
  end
end
