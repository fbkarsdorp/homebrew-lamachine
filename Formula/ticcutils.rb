class Ticcutils < Formula
  desc "Tools for the TiCC Software Stack"
  homepage "https://github.com/LanguageMachines/ticcutils/"
  url "https://github.com/LanguageMachines/ticcutils/releases/download/v0.21/ticcutils-0.21.tar.gz"
  sha256 "73a6b0327d1c14b59ec9e790ef5d5e60dd40b0fb740bf131ee4228565721bd11"

  depends_on "pkg-config" => :build
  depends_on "boost"
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
