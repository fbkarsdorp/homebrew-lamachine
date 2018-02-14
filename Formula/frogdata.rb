class Frogdata < Formula
    desc "Data for Frog NLP toolkit"
    homepage "https://ilk.uvt.nl/frogdata"
    url "https://github.com/LanguageMachines/frogdata/releases/download/v0.15/frogdata-0.15.tar.gz"
    sha256 "6e0e1a303a7b29a57cdfda7aa1b36827639ff55a5a3c67e06c85ddf0912b6cf1"

    depends_on "pkg-config" => :build

    def install
        system "./configure", "--disable-dependency-tracking",
                              "--prefix=#{prefix}",
                             " --disable-silent-rules"
        system "make", "install"
    end
end
