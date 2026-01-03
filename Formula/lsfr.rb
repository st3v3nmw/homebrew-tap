class Lsfr < Formula
    desc "Build complex systems from scratch"
    homepage "https://lsfr.io/"
    url "https://github.com/st3v3nmw/lsfr.git", tag: "v0.1.0"

    depends_on "go" => :build

    def install
      system "go", "mod", "download"
      system "go", "build", "-o", "lsfr", "./cmd/lsfr"

      bin.install "lsfr"
    end
  end
