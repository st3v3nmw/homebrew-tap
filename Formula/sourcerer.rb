class Sourcerer < Formula
    desc "MCP for semantic code search & navigation that reduces token waste "
    homepage "https://github.com/st3v3nmw/sourcerer-mcp"
    url "https://github.com/st3v3nmw/sourcerer-mcp.git", tag: "v0.5.0"

    depends_on "go" => :build

    def install
      system "go", "mod", "download"
      system "go", "build", "-o", "sourcerer", "./cmd/sourcerer"

      bin.install "sourcerer"
    end
  end
