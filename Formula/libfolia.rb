class Libfolia < Formula
  desc "XML annotation format for linguistically annotated language resources"
  homepage "https://proycon.github.io/folia/"
  url "https://github.com/LanguageMachines/libfolia/releases/download/v1.13/libfolia-1.13.tar.gz"
  sha256 "83fa829411c0cc023181243ce92be751b2cf93e1e5940cc5cd7cdf809fe11ffd"

  option "without-check", "skip build-time checks (not recommended)"
  deprecated_option "without-check" => "without-test"

  depends_on "pkg-config" => :build
  depends_on "icu4c"
  depends_on "ticcutils"
  depends_on "libxml2"

  def install
    ENV.append "CXXFLAGS", "-D U_USING_ICU_NAMESPACE=1"
    system "./configure", "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
    system "make", "check" if build.with? "check"
  end
end
