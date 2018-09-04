class Wopr < Formula
    desc "Memory Based Word Predictor/Language Model"
    homepage "http://ilk.uvt.nl/wopr/"
    url "https://github.com/LanguageMachines/wopr/archive/v1.40.7.zip"
    sha256 "69f9bd6932e6888700fe57bb004074b3929393afc6742a7265a9316435f53338"

    depends_on "pkg-config" => :build
    depends_on "automake" => :build
    depends_on "timbl"
    depends_on "libfolia"

    needs :cxx11

    def install
        ENV.cxx11
		system "bash", "bootstrap.sh"
        system "./configure", "--disable-dependency-tracking",
                              "--prefix=#{prefix}"
        system "make", "install"
    end
end
