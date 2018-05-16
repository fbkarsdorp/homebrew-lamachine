class Timbl < Formula
  desc "Memory-based learning algorithms"
  homepage "https://languagemachines.github.io/timbl"
  url "https://github.com/LanguageMachines/timbl/releases/download/v6.4.12/timbl-6.4.12.tar.gz"
  sha256 "fb6bde77c6f93c17479ea790a2bb50791710044208575fec126d2e23493fec76"

  depends_on "pkg-config" => :build
  depends_on "libxml2"
  depends_on "ticcutils"

  needs :cxx11

  def install
    ENV.cxx11
    system "./configure", "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
