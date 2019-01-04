class Ticcltools < Formula
  desc "TicclTools is a collection of programs to process datafiles"
  url "https://github.com/LanguageMachines/ticcltools/releases/download/v0.6/ticcltools-0.6.tar.gz"
  sha256 "10c243b2f45da86b4a40cb37af78b45bcd6756e5035d43af99fc47043711cdb0"

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

