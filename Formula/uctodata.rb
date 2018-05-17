class Uctodata < Formula
  desc "Data for Unicode Tokenizer Ucto"
  homepage "https://languagemachines.github.io/ucto"
  url "https://github.com/LanguageMachines/uctodata/releases/download/v0.7.1/uctodata-0.7.1.tar.gz"
  sha256 "5f2b18144be4458d9b94baab6f0de9c453bad157e57cd575e9541b8d3897328a"

  depends_on "pkg-config" => :build

  def install
    system "./configure", "--prefix=#{prefix}",
                          "--disable-silent-rules"
    system "make", "install"
  end

end
