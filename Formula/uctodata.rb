class Uctodata < Formula
  desc "Data for Unicode Tokenizer Ucto"
  homepage "https://languagemachines.github.io/ucto"
  url "https://github.com/LanguageMachines/uctodata/releases/download/v0.9.1/uctodata-0.9.1.tar.gz"
  sha256 "adaa4154d2b2d1d1cba108e972124a5ebd4d6b4bd3a7aec3c935af996777338d"

  depends_on "pkg-config" => :build

  def install
    system "./configure", "--prefix=#{prefix}",
                          "--disable-silent-rules"
    system "make", "install"
  end

end
