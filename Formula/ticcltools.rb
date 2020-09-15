class Ticcltools < Formula
  desc "TicclTools is a collection of programs to process datafiles"
  url "https://github.com/LanguageMachines/ticcltools/releases/download/v0.7.1/ticcltools-0.7.1.tar.gz"
  sha256 "0f819e42bab1f236e3089887ef45c887fb5d2ce25759001c3d77b1d739acec01"

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

