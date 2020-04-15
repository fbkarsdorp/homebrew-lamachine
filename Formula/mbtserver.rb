class Mbtserver < Formula
  desc "Memory-based tagger - server"
  homepage "https://languagemachines.github.io/mbt"
  url "https://github.com/LanguageMachines/mbtserver/releases/download/v0.14/mbtserver-0.14.tar.gz"
  sha256 "6eede7a7b0821c3bc2360bfd47403f7842fe87a119af08f3c17d7b1ad05cd082"

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

