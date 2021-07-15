class Ticcutils < Formula
  desc "Tools for the TiCC Software Stack"
  homepage "https://github.com/LanguageMachines/ticcutils/"
  url "https://github.com/LanguageMachines/ticcutils/releases/download/v0.27/ticcutils-0.27.tar.gz"
  sha256 "db0d1db4dca38e900436925baf3c47e47cac924838e01f932f76db896d307935"

  depends_on "pkg-config" => :build
  depends_on 'icu4c'
  depends_on "bzip2"
  depends_on "libxml2"
  depends_on "zlib"
  depends_on "libtar"

  def install
    if DevelopmentTools.clang_build_version >= 900
      ENV.delete "SDKROOT"
      ENV.delete "HOMEBREW_SDKROOT"
    end
    ENV.append "CXXFLAGS", "-D U_USING_ICU_NAMESPACE=1"
    system "./configure", "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
