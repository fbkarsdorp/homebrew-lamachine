class Ucto < Formula
  desc "Unicode tokenizer"
  homepage "https://languagemachines.github.io/ucto"
  url "https://github.com/LanguageMachines/ucto/releases/download/v0.31/ucto-0.31.tar.gz"
  sha256 "0a101b43448a27c68e08c08b934b32585b254631c38265e9fb9bbf653266fb0b"

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
