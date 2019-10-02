class Frog < Formula
    desc "Frog NLP toolkit"
    homepage "https://languagemachines.github.io/frog"
    url "https://github.com/LanguageMachines/frog/releases/download/v0.18.6/frog-0.18.6.tar.gz"
    sha256 "34a019f2e6c44d6a09bcba0aa3833b016e0c96923ff11dff59b275ecaf85cd24"

    depends_on "pkg-config" => :build
    depends_on "icu4c"
    depends_on "libxml2"
    depends_on "timbl"
    depends_on "timblserver"
    depends_on "mbt"
    depends_on "frogdata"
    depends_on "ucto"

    def install
      ENV.append "CXXFLAGS", "-D U_USING_ICU_NAMESPACE=1"
      system "./configure", "--disable-dependency-tracking",
                            "--disable-silent-rules",
                            "--prefix=#{prefix}"
      system "make", "install"
    end

    def caveats; <<~EOS
      Before using frog, please link the frogdata to the correct location.
        ln -s #{Formula["frogdata"].opt_share}/frog/ #{share}
      EOS
    end
end
