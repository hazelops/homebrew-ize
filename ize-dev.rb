# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class IzeDev < Formula
  desc "IZE is an opinionated infrastructure wrapper that allows to use multiple tools in one infra"
  homepage "https://ize.sh/"
  version "0.0.0-dev"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hazelops/ize/releases/download/0.0.0-dev/ize_0.0.0-dev_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "a7260d9d0014ebec9ac1394aff7d8d9bc63416c3e106e1b2a1dcb7c896648e16"

      def install
        bin.install "ize"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hazelops/ize/releases/download/0.0.0-dev/ize_0.0.0-dev_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "a358347d01db1302ede96cfa71da03d6da9902615e1fa00886dda881b4259d82"

      def install
        bin.install "ize"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hazelops/ize/releases/download/0.0.0-dev/ize_0.0.0-dev_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "bfdef5582de9970a607c37b7ea6d0291c1e16a3a573b9ec0c4bcd311c636ce86"

      def install
        bin.install "ize"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hazelops/ize/releases/download/0.0.0-dev/ize_0.0.0-dev_linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "288222b41ae7e83ca38e8b8b4dfe05aeb560101ee31ff1ec3c6f39e3ffac8095"

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
