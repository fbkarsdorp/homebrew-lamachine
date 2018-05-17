class Uctodata < Formula
  desc "Data for Unicode Tokenizer Ucto"
  homepage "https://languagemachines.github.io/ucto"
  url "https://github.com/LanguageMachines/uctodata/releases/download/v0.7/uctodata-0.7.tar.gz"
  sha256 "ca34506f8503787da71d5f053d6a3ea5135c6ab3fd82c4127c0775c80b23fc1f"

  depends_on "pkg-config" => :build

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
