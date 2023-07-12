class IosCertTrustManager < Formula
  include Language::Python::Shebang

  desc "Simple management script to import/list/remove CA certificates to iOS simulator"
  homepage "https://github.com/manicmaniac/ADVTrustStore"
  url "https://raw.githubusercontent.com/manicmaniac/ADVTrustStore/84f06050c11666fed4a24c378003ca3d70b8d26c/iosCertTrustManager.py"
  version "1.0.0"
  sha256 "ee709cbd99375490707c366ee5c5b83e9aa05732b964c7e07bb2a7ce395dfe51"

  def install
    rewrite_shebang detected_python_shebang(use_python_from_path: true), "iosCertTrustManager.py"
    bin.install "iosCertTrustManager.py"
  end

  test do
    system bin/"iosCertTrustManager.py", "--help"
  end
end
