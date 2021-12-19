class Ticcltools < Formula
  desc "TicclTools is a collection of programs to process datafiles"
  url "https://github.com/LanguageMachines/ticcltools/releases/download/v0.8/ticcltools-0.8.tar.gz"
  sha256 "8f2002401b11c3a210a9dbab55aff7a16d4209b3a74d324219e272d587986cb9"

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

