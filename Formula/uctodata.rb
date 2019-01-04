class Uctodata < Formula
  desc "Data for Unicode Tokenizer Ucto"
  homepage "https://languagemachines.github.io/ucto"
  url "https://github.com/LanguageMachines/uctodata/releases/download/v0.8/uctodata-0.8.tar.gz"
  sha256 "dd061be524eaf1076b1aa98e64f293537cb7d75220d996bda96d7b1a7577d388"

  depends_on "pkg-config" => :build

  def install
    system "./configure", "--prefix=#{prefix}",
                          "--disable-silent-rules"
    system "make", "install"
  end

end
