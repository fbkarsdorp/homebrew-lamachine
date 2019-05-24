class Frogdata < Formula
    desc "Data for Frog NLP toolkit"
    homepage "https://languagemachines.github.io/frog"
    url "https://github.com/LanguageMachines/frogdata/releases/download/v0.17/frogdata-0.17.tar.gz"
    sha256 "b28ece2901800a47e189ab2a55c276fb326f8d7cab9744da6b1caa0a166e13dd"

    depends_on "pkg-config" => :build

    def install
        system "./configure", "--disable-dependency-tracking",
                              "--prefix=#{prefix}",
                             " --disable-silent-rules"
        system "make", "install"
    end
end
