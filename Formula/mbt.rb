class Mbt < Formula
    desc "Memory-based tagger"
    homepage "https://languagemachines.github.io/mbt"
    url "https://github.com/LanguageMachines/mbt/releases/download/v3.7/mbt-3.7.tar.gz"
    sha256 "8e6da7311a2d18ca89ab24ff915e1d42f4e64814042ae6f37256fa39871a76a5"

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
