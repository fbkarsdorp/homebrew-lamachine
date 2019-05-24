class Libfolia < Formula
  desc "XML annotation format for linguistically annotated language resources"
  homepage "https://proycon.github.io/folia/"
  url "https://github.com/LanguageMachines/libfolia/releases/download/v1.16/libfolia-1.16.tar.gz"
  sha256 "890708e857810a3ffcfcf6eb0a577f1e92418f9f656f3c4924291a459b36a833"

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
