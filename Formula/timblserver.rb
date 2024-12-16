class Timblserver < Formula
  desc "Memory-based learning algorithms"
  homepage "https://languagemachines.github.io/timbl"
  url "https://github.com/LanguageMachines/timblserver/releases/download/v1.19/timblserver-1.19.tar.gz"
  sha256 "128f0fd7c94025f6434d3ee14e207bb2952242d5999b8228713b8a4808dd98d5"

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

