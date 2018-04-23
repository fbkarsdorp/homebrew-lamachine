class Uctodata < Formula
  desc "Data for Unicode Tokenizer Ucto"
  homepage "https://languagemachines.github.io/ucto"
  url "https://github.com/LanguageMachines/uctodata/releases/download/v0.6/uctodata-0.6.tar.gz"
  sha256 "52251482fb383452798f31172967a5f8966bd5616e037881ed318603d6310bdb"

  depends_on "pkg-config" => :build
  depends_on "ucto"

  def install
    system "./configure", "--prefix=#{prefix}",
                          "--disable-silent-rules"
    system "make", "install"
  end

  def caveats; <<~EOS
    To use the uctodata with ucto without specifying a complete path to
    one of the configuration files, run this:
      ln -s #{share}/ucto/* #{Formula["ucto"].opt_share}/ucto/
    EOS
  end
end
