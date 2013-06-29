require 'formula'

class Primer3 < Formula
  homepage 'http://primer3.sourceforge.net/'
  url 'https://sourceforge.net/projects/primer3/files/primer3/2.3.5/primer3-2.3.5.tar.gz'
  sha1 '4473bf684d6f3faf0632fbd2cf8a7ccba56c5053'

  def install
    cd "src" do
      system "make all"
      bin.install %w(primer3_core ntdpal oligotm long_seq_tm_test)
    end
  end
end
