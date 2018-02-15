class Libfolia < Formula
  desc "XML annotation format for linguistically annotated language resources"
  homepage "https://proycon.github.io/folia/"
  url "https://github.com/LanguageMachines/libfolia/releases/download/v1.11/libfolia-1.11.tar.gz"
  sha256 "0e716281802df050bcced4826b470152308f7be93ce481f8f47528abafa1e2e1"

  option "without-test", "skip build-time checks (not recommended)"

  deprecated_option "without-check" => "without-test"

  depends_on "pkg-config" => :build
  depends_on "icu4c"
  depends_on "ticcutils"
  depends_on "libxslt"
  depends_on "libxml2"

  needs :cxx11

  def install
    ENV.cxx11
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "check" if build.with? "test"
    system "make", "install"
  end
end
