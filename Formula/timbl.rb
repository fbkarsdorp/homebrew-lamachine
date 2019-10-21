class Timbl < Formula
  desc "Memory-based learning algorithms"
  homepage "https://languagemachines.github.io/timbl"
  url "https://github.com/LanguageMachines/timbl/releases/download/v6.4.14/timbl-6.4.14.tar.gz"
  sha256 "e789a1a1cf6211c071a9ec802ed61f862ef5b5a99e062e55639fe185d8f3061b"

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
