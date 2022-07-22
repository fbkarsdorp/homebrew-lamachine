class Timbl < Formula
  desc "Memory-based learning algorithms"
  homepage "https://languagemachines.github.io/timbl"
  url "https://github.com/LanguageMachines/timbl/releases/download/v6.7/timbl-6.7.tar.gz"
  sha256 "caaad9aa4f494472ee79554fa8527f76f23fcdf51a7edcb5d517eef87ffd28c2"

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
