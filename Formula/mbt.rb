class Mbt < Formula
    desc "Memory-based tagger"
    homepage "https://languagemachines.github.io/mbt"
    url "https://github.com/LanguageMachines/mbt/releases/download/v3.3.2/mbt-3.3.2.tar.gz"
    sha256 "e672477fb7592e92c16d08ba56dea6dab5261f1c2006356e10b34b3755dc2303"

    depends_on "pkg-config" => :build
    depends_on "timbl"

    needs :cxx11

    def install
        ENV.cxx11
        system "./configure", "--disable-dependency-tracking",
                              "--prefix=#{prefix}",
                              "--with-boost=#{Formula["boost"].opt_prefix}"
        system "make", "install"
    end
end
