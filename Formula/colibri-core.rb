class ColibriCore < Formula
    desc "Colibri Core"
    homepage "https://proycon.github.io/colibri-core"
    url "https://github.com/proycon/colibri-core/archive/refs/tags/v2.5.7.tar.gz"
    sha256 "15150a5544c580cdbef493c989df85447dacde8f9f3c9b024477aa9809ea7a2c"

    depends_on "pkg-config" => :build
    depends_on "autoconf" => :build
    depends_on "automake" => :build
    depends_on "libtool" => :build

    def install
      system "bash", "bootstrap"
      system "./configure", "--disable-dependency-tracking",
                            "--disable-silent-rules",
                            "--prefix=#{prefix}"
      system "make", "install"
    end
end
