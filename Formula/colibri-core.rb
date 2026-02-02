class ColibriCore < Formula
    desc "Colibri Core"
    homepage "https://proycon.github.io/colibri-core"
    url "https://github.com/proycon/colibri-core/archive/refs/tags/v2.5.10.tar.gz"
    sha256 "a37bef0cbf56e1e44d61a778f0bc656a6b951da5523dde1bfdc959feb16250a9"

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
