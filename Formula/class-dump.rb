class ClassDump < Formula
  desc "Generate Objective-C headers from Mach-O files (forked from nygard/class-dump)"
  homepage "https://github.com/manicmaniac/class-dump"
  url "https://github.com/manicmaniac/class-dump/archive/3.5-0.2.1.tar.gz"
  sha256 "4a9d1fee53fbd5b5da02e8f949862d9623be73c0d7c4f652951674c5fd2cd741"

  depends_on :xcode

  def install
    xcodebuild "install", "-project", "class-dump.xcodeproj", "-scheme", "class-dump", "DSTROOT=#{buildpath}"
    bin.install buildpath/"class-dump"
  end

  test do
    system bin/"class-dump", "--version"
  end
end
