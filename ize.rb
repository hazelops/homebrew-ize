class Ize < Formula
  version "v0.0.1"
  sha256 "f4c74c60073e3df7347303f10eb2a04d3dcf0436620813e94388c2ed95fdd220"
  url "https://github.com/hazelops/ize/releases/download/#{version}/macOS"
  name "Ize"
  desc "IZE is an opinionated infrastructure wrapper that allows to use multiple tools in one infra: terraform, serverless, waypoint"
  homepage "https://github.com/hazelops/ize"

  def install
      mv macOS, ize
      bin.install "bin/ize"
    end

    test do
      system "#{bin}/ize --help"
    end
end