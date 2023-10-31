class Frogdata < Formula
    desc "Data for Frog NLP toolkit"
    homepage "https://languagemachines.github.io/frog"
    url "https://github.com/LanguageMachines/frogdata/releases/download/v0.22/frogdata-0.22.tar.gz"
    sha256 "042fa93863ef0c4c26bd4b4dc3ef9d01f9bfe1338073715be480c44c5f0a52cb"

    depends_on "pkg-config" => :build

    def install
        system "./configure", "--disable-dependency-tracking",
                              "--prefix=#{prefix}",
                             " --disable-silent-rules"
        system "make", "install"
    end
end
