class Uctodata < Formula
  desc "Data for Unicode Tokenizer Ucto"
  homepage "https://languagemachines.github.io/ucto"
  url "https://github.com/LanguageMachines/uctodata/releases/download/v0.10.1/uctodata-0.10.1.tar.gz"
  sha256 "e0f56239b05f876b1f2107d22cc8032e682db0f1d7d998f7ace2cf65d108d632"

  depends_on "pkg-config" => :build

  def install
    system "./configure", "--prefix=#{prefix}",
                          "--disable-silent-rules"
    system "make", "install"
  end

end
