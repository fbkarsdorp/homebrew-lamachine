class Timbl < Formula
  desc "Memory-based learning algorithms"
  homepage "https://ilk.uvt.nl/timbl/"
  url "https://github.com/LanguageMachines/timbl/releases/download/v6.4.10/timbl-6.4.10.tar.gz"
  sha256 "c95ad52e78136840245e7732ec6403282894ecf187b18b49a8271f34520c2dcb"

  depends_on "pkg-config" => :build
  depends_on "libxml2"
  depends_on "ticcutils"

  needs :cxx11

  def install
    ENV.cxx11
    system "./configure", "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end