class Ucto < Formula
  desc "Unicode tokenizer"
  homepage "https://languagemachines.github.io/ucto"
  url "https://github.com/LanguageMachines/ucto/releases/download/v0.37/ucto-0.37.tar.gz"
  sha256 "5cb678fc2b8c340c29e5bcc49849a2df47c2a2435a4f7b642e5f274377c02e16"

  option "without-check", "skip build-time checks (not recommended)"

  depends_on "pkg-config" => :build
  depends_on "libexttextcat"
  depends_on "icu4c"
  depends_on "ticcutils"
  depends_on "libfolia"
  depends_on "uctodata"

  def install
    ENV.append "CXXFLAGS", "-D U_USING_ICU_NAMESPACE=1"
    #ENV.append "LDFLAGS", "-lexttextcat"
    system "./configure", "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
    system "make", "check" if build.with? "check"
  end
end
