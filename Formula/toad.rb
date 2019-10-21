class Toad < Formula
    desc "Trainer of All Data - Trainer for Frog"
    homepage "https://languagemachines.github.io/frog"
    url "https://github.com/LanguageMachines/toad/releases/download/v0.6/toad-0.6.tar.gz"
    sha256 "56c768cb4fac5e26829af5ec3b4cd8a5c00ae3ce27aad5c5ba743f11ef22d382"

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
