class Ucto < Formula
  desc "Unicode tokenizer"
  homepage "https://languagemachines.github.io/ucto"
  url "https://github.com/LanguageMachines/ucto/releases/download/v0.11/ucto-0.11.tar.gz"
  sha256 "f61f2465a1d1e79b964df7807a7957eba1cb4acc21c9cd74e91de662a8d192e8"

  option "without-check", "skip build-time checks (not recommended)"

  bottle do
    sha256 "7112464e306403c095c1bad09cb487acd81fc929ff63cbba390242594fbc2050" => :high_sierra
    sha256 "56a6f9ffdbb9d7959c9e95771205e58e01cbfd367c3ba2ad549d39e30ed44412" => :sierra
    sha256 "405afb2d6830686e4e5ebe75c19dd02217e50ea863add31e6d3a41cbde1b6a6b" => :el_capitan
    sha256 "aa4f105c027da6ae3040bfc0c9894392f08de23d0d8b5dcccced9aa799e256b9" => :x86_64_linux
  end

  head do
    url "https://github.com/LanguageMachines/ucto.git"
    depends_on "autoconf" => :build
    depends_on "automake" => :build
  end

  depends_on "pkg-config" => :build
  depends_on "libtextcat" 
  depends_on "icu4c"
  depends_on "libfolia"
  depends_on "libxslt"
  depends_on "libxml2"


  def install
    ENV.append "CXXFLAGS", "-I#{Formula["libtextcat"].include}"
    ENV.append "LDFLAGS", "-ltextcat"
    
    system "chmod +x bootstrap.sh" if build.head?
    system "./bootstrap.sh" if build.head?
    
    system "./configure", "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
    system "make", "check" if build.with? "check"    
  end
end
