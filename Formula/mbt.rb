class Mbt < Formula
    desc "Memory-based tagger"
    homepage "https://languagemachines.github.io/mbt"
    url "https://github.com/LanguageMachines/mbt/releases/download/v3.6/mbt-3.6.tar.gz"
    sha256 "b649278b34aa52970585c5ba34df2b30f44113292da05a85a4ed38e13c406028"

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
