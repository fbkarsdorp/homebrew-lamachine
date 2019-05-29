class Ucto < Formula
  desc "Unicode tokenizer"
  homepage "https://languagemachines.github.io/ucto"
  url "https://github.com/LanguageMachines/ucto/releases/download/v0.16/ucto-0.16.tar.gz"
  sha256 "12ba574e08c6e681453d4e0b77ecfe42899b06bb4d8db91811d60b613a3b882a"

  option "without-check", "skip build-time checks (not recommended)"

  depends_on "pkg-config" => :build
  depends_on "libtextcat"
  depends_on "icu4c"
  depends_on "ticcutils"
  depends_on "libfolia"
  depends_on "uctodata"

  def install
    ENV.append "CXXFLAGS", "-I#{Formula["libtextcat"].opt_include}/libtextcat/ -D U_USING_ICU_NAMESPACE=1"
    ENV.append "LDFLAGS", "-ltextcat"
    system "./configure", "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
    system "make", "check" if build.with? "check"
  end
end
