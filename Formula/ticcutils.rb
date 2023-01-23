class Ticcutils < Formula
  desc "Tools for the TiCC Software Stack"
  homepage "https://github.com/LanguageMachines/ticcutils/"
  url "https://github.com/LanguageMachines/ticcutils/releases/download/v0.31/ticcutils-0.31.tar.gz"
  sha256 "ea04dac94d9ac47424fae8016e0163605644a473a16d97e664fc3f3943b3865f"

  depends_on "pkg-config" => :build
  depends_on 'icu4c'
  depends_on "bzip2"
  depends_on "libxml2"
  depends_on "zlib"

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
