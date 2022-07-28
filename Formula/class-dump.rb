class ClassDump < Formula
  desc "Generate Objective-C headers from Mach-O files (forked from nygard/class-dump)"
  homepage "https://github.com/manicmaniac/class-dump"
  url "https://github.com/manicmaniac/class-dump/archive/3.5.tar.gz"
  sha256 "94f5286c657dca02dbed4514b2dbd791b42ecef5122e3945a855caf8d1f65e64"

  depends_on :xcode

  def install
    xcodebuild "install", "-project", "class-dump.xcodeproj", "-target", "class-dump", "DSTROOT=#{buildpath}"
    bin.install buildpath/"class-dump"
  end

  test do
    system bin/"class-dump", "--version"
  end
end
