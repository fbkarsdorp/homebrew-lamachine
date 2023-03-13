class Toad < Formula
    desc "Trainer of All Data - Trainer for Frog"
    homepage "https://languagemachines.github.io/frog"
    url "https://github.com/LanguageMachines/toad/releases/download/v0.8/toad-0.8.tar.gz"
    sha256 "cdf5f654c7d5c1aaa1d4322de3da8989182896e03993d12fa2b453674a2fc225"

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
