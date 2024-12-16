class Toad < Formula
    desc "Trainer of All Data - Trainer for Frog"
    homepage "https://languagemachines.github.io/frog"
    url "https://github.com/LanguageMachines/toad/releases/download/v0.9/toad-0.9.tar.gz"
    sha256 "421cc336be26b8740106c2f5dcb51c66b8131378cebf9ee444efef6fde3fe6f3"

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
