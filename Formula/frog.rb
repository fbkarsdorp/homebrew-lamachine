class Frog < Formula
    desc "Frog NLP toolkit"
    homepage "https://ilk.uvt.nl/frog"
    url "https://github.com/LanguageMachines/frog/releases/download/v0.13.10/frog-0.13.10.tar.gz"
    sha256 "9e68a6eab524ae973e947eb7550c0509823b4cf64fbc025675b9a568702c1116"

    depends_on "pkg-config" => :build
    depends_on "timbl"
    depends_on "timblserver"
    depends_on "mbt"
    depends_on "frogdata"
    depends_on "ucto"

    needs :cxx11

    def install
        ENV.cxx11
        system "./configure", "--disable-dependency-tracking",
                              "--prefix=#{prefix}",
                              "--with-boost=#{Formula["boost"].opt_prefix}"
        system "make", "install"
    end
end