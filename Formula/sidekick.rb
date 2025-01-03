class Sidekick < Formula
    desc "A terminal assistant that understands your natural language commands and executes them for you"
    homepage "https://github.com/st3v3nmw/sidekick"
    url "https://github.com/st3v3nmw/sidekick.git", tag: "v0.1.2"

    depends_on "go" => :build

    def install
      system "go", "mod", "download"
      system "go", "build", "-o", "sidekick", "./cmd/sidekick"

      bin.install "sidekick"
    end
  end
