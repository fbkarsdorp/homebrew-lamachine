class Timblserver < Formula
  desc "Memory-based learning algorithms"
  homepage "https://languagemachines.github.io/timbl"
  url "https://github.com/LanguageMachines/timblserver/releases/download/v1.17/timblserver-1.17.tar.gz"
  sha256 "8db4d234937ed4af4b92a10226d9415a65ac2dc8e9e5d7ff5f4425c8359bbedc"

  depends_on "pkg-config" => :build
  depends_on "timbl"

    def install
        ENV.cxx11
        system "./configure", "--disable-dependency-tracking",
                              "--disable-silent-rules",
                              "--prefix=#{prefix}"
        system "make", "install"
    end
end

