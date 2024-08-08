# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class IzeDev < Formula
  desc "IZE is an opinionated infrastructure wrapper that allows to use multiple tools in one infra"
  homepage "https://ize.sh/"
  version "0.0.0-dev"
  license "Apache 2.0"

  on_macos do
    on_intel do
      url "https://github.com/hazelops/ize/releases/download/0.0.0-dev/ize_0.0.0-dev_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "f0fc225d131d23561a682119b3843cb66781c6d033fa0a98a5af139077cca9d2"

      def install
        bin.install "ize"
      end
    end
    on_arm do
      url "https://github.com/hazelops/ize/releases/download/0.0.0-dev/ize_0.0.0-dev_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "0d21e7d3763ffcf77ff80bd69e0978cccfd196b0dc2d3422ffe65dbdacf16fdf"

      def install
        bin.install "ize"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/hazelops/ize/releases/download/0.0.0-dev/ize_0.0.0-dev_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "b76d9f4e525f38076b43893278afaf07b6a551314dd66f0e7c6d9f467fc12bca"

        def install
          bin.install "ize"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/hazelops/ize/releases/download/0.0.0-dev/ize_0.0.0-dev_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "048b32605e87495a92459a7df8b1abd0bfc2fed9497f929035fbf7309a7033c1"

        def install
          bin.install "ize"
        end
      end
    end
  end

  conflicts_with "ize"

  test do
    system "#{bin}/ize"
  end
end
