class Toad < Formula
    desc "Trainer of All Data - Trainer for Frog"
    homepage "https://languagemachines.github.io/frog"
    url "https://github.com/LanguageMachines/toad/releases/download/v0.5/toad-0.5.tar.gz"
    sha256 "0a149458ecab0f31745ab24ff450693744b52b082b8a4ffdb37db65b29871ab7"

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
