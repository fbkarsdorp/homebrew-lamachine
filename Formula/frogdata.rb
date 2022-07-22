class Frogdata < Formula
    desc "Data for Frog NLP toolkit"
    homepage "https://languagemachines.github.io/frog"
    url "https://github.com/LanguageMachines/frogdata/releases/download/v0.21/frogdata-0.21.tar.gz"
    sha256 "e84136daba979fba379ffbdbfbbdda28fbbce3bc56c4d6e11223f49787d0fba0"

    depends_on "pkg-config" => :build

    def install
        system "./configure", "--disable-dependency-tracking",
                              "--prefix=#{prefix}",
                             " --disable-silent-rules"
        system "make", "install"
    end
end
