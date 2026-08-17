class Mbtagger < Formula
    desc "Memory-based tagger"
    homepage "https://languagemachines.github.io/mbt"
    url "https://github.com/LanguageMachines/mbt/releases/download/v3.12/mbt-3.12.tar.gz"
    sha256 "cf6ecba506ee18337e4d659113652bf357ff457845de518387c4e3748715a8b6"

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
