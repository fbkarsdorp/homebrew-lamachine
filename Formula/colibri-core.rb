class ColibriCore < Formula
    desc "Colibri Core"
    homepage "https://proycon.github.io/colibri-core"
    url "https://github.com/proycon/colibri-core/archive/refs/tags/v2.5.7.tar.gz"
    sha256 "27b34ad2114e250220a590c813f0aa28f24f89d458b8055d3405c63711463f79d049069cdb91707c02a650248aacde07a5f98977dc158a511029feb96ef28a2f"

    depends_on "pkg-config" => :build
    depends_on "autoconf" => :build
    depends_on "automake" => :build

    def install
      system "bash", "bootstrap"
      system "./configure", "--disable-dependency-tracking",
                            "--disable-silent-rules",
                            "--prefix=#{prefix}"
      system "make", "install"
    end
end
