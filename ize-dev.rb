# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class IzeDev < Formula
  desc "IZE is an opinionated infrastructure wrapper that allows to use multiple tools in one infra"
  homepage "https://ize.sh/"
  version "0.0.0-dev"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hazelops/ize/releases/download/0.0.0-dev/ize_0.0.0-dev_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "12b1a55f070a4d4284dfec3366cc894a7c06306da2d9c94454bb8dedbd9c32e8"

      def install
        bin.install "ize"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/hazelops/ize/releases/download/0.0.0-dev/ize_0.0.0-dev_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "9ff7c53b5c6d9e5cbfdf2a731c693a9e2eb64521715d6bed19b029f98fcc98b0"

      def install
        bin.install "ize"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hazelops/ize/releases/download/0.0.0-dev/ize_0.0.0-dev_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "a14eb2f10031557ce0a4c7dc07453e442f422b1b68249ddd4dd4225f0c407601"

      def install
        bin.install "ize"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hazelops/ize/releases/download/0.0.0-dev/ize_0.0.0-dev_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "5c50c3693af25a4598263ff18cf3e5b212404737b623c8a9e2ad108c861ca699"

      def install
        bin.install "ize"
      end
    end
  end

  conflicts_with "ize"

  test do
    system "#{bin}/ize"
  end
end
