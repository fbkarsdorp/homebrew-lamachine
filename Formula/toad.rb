class Toad < Formula
    desc "Trainer of All Data - Trainer for Frog"
    homepage "https://languagemachines.github.io/frog"
    url "https://github.com/LanguageMachines/toad/releases/download/v0.4/toad-0.4.tar.gz"
    sha256 "74142b89ba07f9c281ec04932a98c5d7e108222521f8a807370c5a9be279d440"

    depends_on "pkg-config" => :build
    depends_on "frog"

    def install
        ENV.cxx11
        ENV.append "CXXFLAGS", "-D U_USING_ICU_NAMESPACE=1"
        system "./configure", "--disable-dependency-tracking",
                              "--prefix=#{prefix}"
        system "make", "install"
    end
end
