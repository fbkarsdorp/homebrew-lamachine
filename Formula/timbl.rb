class Timbl < Formula
  desc "Memory-based learning algorithms"
  homepage "https://languagemachines.github.io/timbl"
  url "https://github.com/LanguageMachines/timbl/releases/download/v6.11/timbl-6.11.tar.gz"
  sha256 "396f7f0da98d77276c43766887740abb12a1ceacd2d0ef79a07f1fdadbabb731"

  depends_on "pkg-config" => :build
  depends_on "libxml2"
  depends_on "ticcutils"

  def install
    ENV.cxx11
    system "./configure", "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
