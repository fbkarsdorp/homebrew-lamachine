class Foliautils < Formula
  desc "FoLiA Utilities"
  homepage "https://languagemachines.github.io/folia"
  url "https://github.com/LanguageMachines/foliautils/releases/download/v0.20/foliautils-0.20.tar.gz"
  sha256 "b5f97d178c8691bf14e55009da7c9f848c37613246dbb7395ff1b0a29c04decd"

  option "without-check", "skip build-time checks (not recommended)"

  depends_on "pkg-config" => :build
  depends_on "libtextcat"
  depends_on "icu4c"
  depends_on "ticcutils"
  depends_on "libfolia"
  depends_on "ucto"
  depends_on "libxml2"

  def install
    ENV.append "CXXFLAGS", "-I#{Formula["libtextcat"].opt_include}/libtextcat/ -D U_USING_ICU_NAMESPACE=1"
    ENV.append "LDFLAGS", "-ltextcat"
    system "./configure", "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
