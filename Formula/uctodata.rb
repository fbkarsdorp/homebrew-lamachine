class Uctodata < Formula
  desc "Data for Unicode Tokenizer Ucto"
  homepage "https://languagemachines.github.io/ucto"
  url "https://github.com/LanguageMachines/uctodata/releases/download/v0.11/uctodata-0.11.tar.gz"
  sha256 "6e65d0216b2ecc776229c0c316a672acd23082f20ef25e1be7a8654fd30e2ad6"

  depends_on "pkg-config" => :build

  def install
    system "./configure", "--prefix=#{prefix}",
                          "--disable-silent-rules"
    system "make", "install"
  end

end
