class Wopr < Formula
    desc "Memory Based Word Predictor/Language Model"
    homepage "http://ilk.uvt.nl/wopr/"
    url "https://github.com/LanguageMachines/wopr/releases/download/v1.41/wopr-1.41.tar.gz"
    sha256 "c7eced211af80add3390280db7298f8b6f341c1cb293598391fa2aff619a86be"

    depends_on "pkg-config" => :build
    depends_on "automake" => :build
    depends_on "autoconf" => :build
    depends_on "libtool" => :build
    depends_on "icu4c"
    depends_on "ticcutils"
    depends_on "timbl"
    depends_on "libfolia"

    def install
        ENV.append "CXXFLAGS", "-D U_USING_ICU_NAMESPACE=1"
        ENV.cxx11
		system "bash", "bootstrap.sh"
        system "./configure", "--disable-dependency-tracking",
                              "--prefix=#{prefix}"
        system "make", "install"
    end
end
