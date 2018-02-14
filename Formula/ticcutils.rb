class Ticcutils < Formula
  desc "Tools for the TiCC Software Stack"
  homepage "https://ilk.uvt.nl/ticcutils/"
  url "https://github.com/LanguageMachines/ticcutils/releases/download/v0.17/ticcutils-0.17.tar.gz"
  sha256 "4e5ed6b66a8595f4bdb75c46458723c6a8001a570ff47c068ea4e1ff1517c8a1"

  depends_on "pkg-config" => :build
  depends_on "boost"
  depends_on "icu4c"

  unless OS.mac?
    depends_on "bzip2"
    depends_on "libxml2"
    depends_on "zlib"
  end

  needs :cxx11

  def install
    ENV.cxx11
    system "./configure", "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}",
                          "--with-boost=#{Formula["boost"].opt_prefix}"
    system "make", "install"
  end
end