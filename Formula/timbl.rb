class Timbl < Formula
  desc "Memory-based learning algorithms"
  homepage "https://languagemachines.github.io/timbl"
  url "https://github.com/LanguageMachines/timbl/releases/download/v6.9/timbl-6.9.tar.gz"
  sha256 "a65e341957fad623615e06c319eef1e52070af0681a32ede2825b81340a3f693"

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
