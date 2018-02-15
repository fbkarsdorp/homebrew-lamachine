class Timblserver < Formula
  desc "Memory-based learning algorithms"
  homepage "https://languagemachines.github.io/timbl"
  url "https://github.com/LanguageMachines/timblserver/releases/download/v1.11/timblserver-1.11.tar.gz"
  sha256 "3725bff98b4c4c378b218055a29047c65bd0f823bf384a572b54ff49c98ae9f2"

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

