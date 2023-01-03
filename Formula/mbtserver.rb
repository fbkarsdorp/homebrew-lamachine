class Mbtserver < Formula
  desc "Memory-based tagger - server"
  homepage "https://languagemachines.github.io/mbt"
  url "https://github.com/LanguageMachines/mbtserver/releases/download/v0.16/mbtserver-0.16.tar.gz"
  sha256 "5909f71576d55e4389765070a96770404330be39544cfbad0576ff4f2e0a6ec1"

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

