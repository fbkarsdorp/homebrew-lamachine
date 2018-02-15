class Uctodata < Formula
  desc "Data for Unicode Tokenizer Ucto"
  homepage "https://ilk.uvt.nl/uctodata"
  url "https://github.com/LanguageMachines/uctodata/releases/download/v0.5/uctodata-0.5.tar.gz"
  sha256 "a6afaac1f8330df49560d3c00c670ac734ba71974b26a01a71e08b85b147b655"

  depends_on "pkg-config" => :build

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--disable-silent-rules"
    system "make", "install"
  end
end
