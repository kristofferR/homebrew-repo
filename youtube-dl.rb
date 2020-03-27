class YoutubeDl < Formula
  desc "Download YouTube videos from the command-line"
  homepage "https://github.com/kade-robertson/youtube-dl"
  url "https://github.com/ytdl-org/youtube-dl/releases/download/2020.03.24/youtube-dl-2020.03.24.tar.gz"
  sha256 "45a398a41e4a06862413d9c8d57e6c1fa0e60660c6f69df928b64f3595568416"

  head do
    url "https://github.com/kade-robertson/youtube-dl.git", :branch => 'master', :using => :git
    depends_on "pandoc" => :build
  end

  bottle :unneeded

  def install
    system "make", "PREFIX=#{prefix}" if build.head?
    bin.install "youtube-dl"
  end

  test do
    system "#{bin}/youtube-dl", "--simulate", "https://www.youtube.com/watch?v=he2a4xK8ctk"
    system "#{bin}/youtube-dl", "--simulate", "--yes-playlist", "https://www.youtube.com/watch?v=7FlzFH9xOF8&list=PLRuS3NbVmMIq4XypJdggVfUVJNRZjbfCR"
  end
end
