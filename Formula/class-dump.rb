class ClassDump < Formula
  desc "Generate Objective-C headers from Mach-O files (forked from nygard/class-dump)."
  homepage "https://github.com/manicmaniac/class-dump"
  url "https://github.com/manicmaniac/class-dump/archive/3.5-0.1.0.tar.gz"
  sha256 "e17c98776c01ab397b8b1b2c56062e27ef96a4d59f314bdda840c07490ca68be"

  depends_on :xcode

  def install
    system "xcodebuild", "install", "-project", "class-dump.xcodeproj", "-target", "class-dump", "-configuration", "Release", "DSTROOT=#{buildpath}"
    bin.install buildpath/"class-dump"
  end

  test do
    system bin/"class-dump", "--version"
  end
end
