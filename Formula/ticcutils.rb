class Ticcutils < Formula
  desc "Tools for the TiCC Software Stack"
  homepage "https://github.com/LanguageMachines/ticcutils/"
  url "https://github.com/LanguageMachines/ticcutils/releases/download/v0.24/ticcutils-0.24.tar.gz"
  sha256 "ed3f26fd7973294f8c908efb362e82fe17fcaa07f8c19202322bb45f39a327af"

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
