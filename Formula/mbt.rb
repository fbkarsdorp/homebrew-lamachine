class Mbt < Formula
    desc "Memory-based tagger"
    homepage "https://languagemachines.github.io/mbt"
    url "https://github.com/LanguageMachines/mbt/releases/download/v3.3.1/mbt-3.3.1.tar.gz"
    sha256 "db214309da5dfb5e134e287fa2f87e813637b1f5a5a02922291db0ac4f4b7401"

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
