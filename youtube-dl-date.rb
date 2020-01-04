class YoutubeDlDate < Formula
  desc "Download YouTube videos from the command-line"
  homepage "https://github.com/kade-robertson/youtube-dl"
  url "https://github.com/kade-robertson/youtube-dl/archive/master.zip"

  head do
    url "https://github.com/kade-robertson/youtube-dl.git"
    depends_on "pandoc" => :build
  end

  bottle :unneeded

  def install
    system "make", "PREFIX=#{prefix}" if build.head?
    bin.install "youtube-dl-date"
  end

  test do
    system "#{bin}/youtube-dl-date", "--simulate", "https://www.youtube.com/watch?v=he2a4xK8ctk"
    system "#{bin}/youtube-dl-date", "--simulate", "--yes-playlist", "https://www.youtube.com/watch?v=7FlzFH9xOF8&list=PLRuS3NbVmMIq4XypJdggVfUVJNRZjbfCR"
  end
end