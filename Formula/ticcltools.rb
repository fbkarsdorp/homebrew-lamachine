class Ticcltools < Formula
  desc "TicclTools is a collection of programs to process datafiles"
  url "https://github.com/LanguageMachines/ticcltools/releases/download/v0.5/ticcltools-0.5.tar.gz"
  sha256 "7bc52a18d6b63ef40383f9944e691e77c7476503321c4e082ca2341878299c47"

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

