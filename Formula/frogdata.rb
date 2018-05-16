class Frogdata < Formula
    desc "Data for Frog NLP toolkit"
    homepage "https://languagemachines.github.io/frog"
    url "https://github.com/LanguageMachines/frogdata/releases/download/v0.16/frogdata-0.16.tar.gz"
    sha256 "999994bf39a19b1c32f360a0b15d833a3c3c9bc061812a388043d5bc3665e018"

    depends_on "pkg-config" => :build

    def install
        system "./configure", "--disable-dependency-tracking",
                              "--prefix=#{prefix}",
                             " --disable-silent-rules"
        system "make", "install"
    end
end
