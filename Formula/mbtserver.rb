class Mbtserver < Formula
  desc "Memory-based tagger - server"
  homepage "https://languagemachines.github.io/mbt"
  url "https://github.com/LanguageMachines/mbtserver/releases/download/v0.15/mbtserver-0.15.tar.gz"
  sha256 "d2fa38ac3bbeb808dd2519f19c9ee66e0752529e43be14898904bd356e155f56"

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

