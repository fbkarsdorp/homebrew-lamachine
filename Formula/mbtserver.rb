class Mbtserver < Formula
  desc "Memory-based tagger - server"
  homepage "https://languagemachines.github.io/mbt"
  url "https://github.com/LanguageMachines/mbtserver/releases/download/v0.13/mbtserver-0.13.tar.gz"
  sha256 "ae36e08f33e95209abd0cd5b13809853c8594b04aaeaf9c99ead32246c05f6c1"

  depends_on "pkg-config" => :build
  depends_on "timbl"
  depends_on "mbt"

    def install
        ENV.cxx11
        system "./configure", "--disable-dependency-tracking",
                              "--disable-silent-rules",
                              "--prefix=#{prefix}"
        system "make", "install"
    end
end

