class Ticcltools < Formula
  desc "TicclTools is a collection of programs to process datafiles"
  url "https://github.com/LanguageMachines/ticcltools/releases/download/v0.7/ticcltools-0.7.tar.gz"
  sha256 "f704aef339be68fdf4434737c5f4a56b0dc4858016d6f35ad5ac2cf08f1321b0"

  depends_on "pkg-config" => :build
  depends_on "icu4c"
  depends_on "libxml2"
  depends_on "ticcutils"

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end

