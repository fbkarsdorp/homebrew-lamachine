class Timblserver < Formula
  desc "Memory-based learning algorithms"
  homepage "https://languagemachines.github.io/timbl"
  url "https://github.com/LanguageMachines/timblserver/releases/download/v1.18/timblserver-1.18.tar.gz"
  sha256 "8eafad2268c6db37847bde16928abfa917dd9041cf85c2847d5b82386e750c35"

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

