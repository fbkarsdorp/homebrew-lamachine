class ColibriCore < Formula
    desc "Colibri Core"
    homepage "https://proycon.github.io/colibri-core"
    url "https://github.com/proycon/colibri-core/archive/refs/tags/v2.5.9.tar.gz"
    sha256 "ac39d13b2de6a550f6707a03bc1740d27a0c500833bc6f1ef5f7e7363d9fee29"

    depends_on "pkg-config" => :build
    depends_on "autoconf" => :build
    depends_on "automake" => :build
    depends_on "libtool" => :build

    def install
      system "autoreconf", "-i"
      system "./configure", "--disable-dependency-tracking",
                            "--disable-silent-rules",
                            "--prefix=#{prefix}"
      system "make", "install"
    end
end
