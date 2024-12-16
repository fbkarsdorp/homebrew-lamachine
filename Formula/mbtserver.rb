class Mbtserver < Formula
  desc "Memory-based tagger - server"
  homepage "https://languagemachines.github.io/mbt"
  url "https://github.com/LanguageMachines/mbtserver/releases/download/v0.17/mbtserver-0.17.tar.gz"
  sha256 "91f7df72951b4a8aed50761650518e7112a135f002772017866e746be64e750c"

  depends_on "pkg-config" => :build
  depends_on "timbl"
  depends_on "mbtagger"

    def install
        ENV.cxx11
        system "./configure", "--disable-dependency-tracking",
                              "--disable-silent-rules",
                              "--prefix=#{prefix}"
        system "make", "install"
    end
end

