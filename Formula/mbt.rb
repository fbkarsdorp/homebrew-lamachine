class Mbt < Formula
    desc "Memory-based tagger"
    homepage "https://languagemachines.github.io/mbt"
    url "https://github.com/LanguageMachines/mbt/releases/download/v3.4/mbt-3.4.tar.gz"
    sha256 "e6a130f2a1db60a3ab2d2942cbf79b7695383eb8b31ff3f1cc3c60201d074c48"

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
