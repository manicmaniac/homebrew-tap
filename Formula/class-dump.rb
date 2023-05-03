class ClassDump < Formula
  desc "Generate Objective-C headers from Mach-O files (forked from nygard/class-dump)"
  homepage "https://github.com/manicmaniac/class-dump"
  url "https://github.com/manicmaniac/class-dump/archive/3.5-0.2.0.tar.gz"
  sha256 "eb49b66d73605db3d5c962646acd2af22cf5283bbda03a08a71f0bbc63ecbb34"

  depends_on :xcode

  def install
    xcodebuild "install", "-project", "class-dump.xcodeproj", "-target", "class-dump", "DSTROOT=#{buildpath}"
    bin.install buildpath/"class-dump"
  end

  test do
    system bin/"class-dump", "--version"
  end
end
