class ClassDump < Formula
  desc "Generate Objective-C headers from Mach-O files (forked from nygard/class-dump)"
  homepage "https://github.com/manicmaniac/class-dump"
  url "https://github.com/manicmaniac/class-dump/archive/3.5-0.1.1.tar.gz"
  sha256 "40f5f4c91b8dae9c0e2c017d386b49d38ce1191638d8555933f770b68d500a48"

  depends_on :xcode

  def install
    xcodebuild "install", "-project", "class-dump.xcodeproj", "-target", "class-dump", "DSTROOT=#{buildpath}"
    bin.install buildpath/"class-dump"
  end

  test do
    system bin/"class-dump", "--version"
  end
end
