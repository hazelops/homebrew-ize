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
      sha256 "15f4a62ea108ebae6ff8ebd87520dd2df29ed56fdf719f4dcc38378d8ded614a"

      def install
        bin.install "ize"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hazelops/ize/releases/download/0.0.0-dev/ize_0.0.0-dev_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "b9f85982bdc87c265ab4dc90ebd379f728f6b7ef30e058cda5099ce908576ead"

      def install
        bin.install "ize"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hazelops/ize/releases/download/0.0.0-dev/ize_0.0.0-dev_linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "43c91a57178fab04bfce30c964e6bb6e8969d12c6062a87ad1c45fa349fb687b"

      def install
        bin.install "ize"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hazelops/ize/releases/download/0.0.0-dev/ize_0.0.0-dev_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "94a3bf891c9f85e3640431e46d9d9d7d646f61c8825d5624b6bca36b51505447"

      def install
        bin.install "ize"
      end
    end
  end

  test do
    system "#{bin}/ize"
  end
end
