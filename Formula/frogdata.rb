class Frogdata < Formula
    desc "Data for Frog NLP toolkit"
    homepage "https://languagemachines.github.io/frog"
    url "https://github.com/LanguageMachines/frogdata/releases/download/v0.20/frogdata-0.20.tar.gz"
    sha256 "569bb95881df438f8267cf17b6701976d1ddea7a65ca9f6a840649724dc673f9"

    depends_on "pkg-config" => :build

    def install
        system "./configure", "--disable-dependency-tracking",
                              "--prefix=#{prefix}",
                             " --disable-silent-rules"
        system "make", "install"
    end
end
