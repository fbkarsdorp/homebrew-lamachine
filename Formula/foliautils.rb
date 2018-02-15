class Ucto < Formula
  desc "FoLiA Utilities"
  homepage "https://languagemachines.github.io/folia"
  url "https://github.com/LanguageMachines/foliautils/releases/download/v0.7/foliautils-0.7.tar.gz"
  sha256 "20e8a5bc9867108740aa5d56aa91f4bb2f2b9e73724079b1005448"

  option "without-check", "skip build-time checks (not recommended)"

  depends_on "pkg-config" => :build
  depends_on "icu4c"
  depends_on "libfolia"
  depends_on "libxml2"
  depends_on "libtextcat"

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
    system "make", "check" if build.with? "check"
  end
end
