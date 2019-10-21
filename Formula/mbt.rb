class Mbt < Formula
    desc "Memory-based tagger"
    homepage "https://languagemachines.github.io/mbt"
    url "https://github.com/LanguageMachines/mbt/releases/download/v3.5/mbt-3.5.tar.gz"
    sha256 "12dec8c0516f923a5009c1352f15f13483e29bf38a1d16b2ac4806857493428a"

    depends_on "pkg-config" => :build
    depends_on "timbl"

    def install
        ENV.cxx11
        system "./configure", "--disable-dependency-tracking",
                              "--prefix=#{prefix}",
                              "--with-boost=#{Formula["boost"].opt_prefix}"
        system "make", "install"
    end
end
