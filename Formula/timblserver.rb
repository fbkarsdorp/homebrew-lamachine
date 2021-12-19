class Timblserver < Formula
  desc "Memory-based learning algorithms"
  homepage "https://languagemachines.github.io/timbl"
  url "https://github.com/LanguageMachines/timblserver/releases/download/v1.15/timblserver-1.15.tar.gz"
  sha256 "df93b836682dd4ee2e1fd0b634e04aad408f4412c88fadd56e9a7074c9ab46e8"

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

