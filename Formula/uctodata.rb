class Uctodata < Formula
  desc "Data for Unicode Tokenizer Ucto"
  homepage "https://languagemachines.github.io/ucto"
  url "https://github.com/LanguageMachines/uctodata/releases/download/v0.5/uctodata-0.5.tar.gz"
  sha256 "a6afaac1f8330df49560d3c00c670ac734ba71974b26a01a71e08b85b147b655"

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
