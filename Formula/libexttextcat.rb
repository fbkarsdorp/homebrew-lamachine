class Libexttextcat < Formula
    desc "libexttextcat is an N-Gram-Based Text Categorization library primarily intended
for language guessing."
    homepage "https://github.com/LibreOffice/libexttextcat"
    url "https://github.com/LibreOffice/libexttextcat/archive/refs/tags/v3.4.7.tar.gz"
    sha256 "3c9019759b139653ca74fd2a5f57ab46ab6aa49bb35b64e81e991c2c4aff7b0a"

    depends_on "pkg-config" => :build

    def install
      system "./configure", "--disable-dependency-tracking",
                            "--disable-silent-rules",
                            "--prefix=#{prefix}"
      system "make", "install"
    end
end
