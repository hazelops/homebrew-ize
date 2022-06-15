# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ize043 < Formula
  desc "IZE is an opinionated infrastructure wrapper that allows to use multiple tools in one infra"
  homepage "https://ize.sh/"
  version "0.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hazelops/ize/releases/download/0.4.3/ize_0.4.3_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "4c6ffacc7bb0c7f6bb9a3357ccf1b156a8edf4a3dfd48c1a204e5a214ed6cc71"

      def install
        bin.install "ize"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/hazelops/ize/releases/download/0.4.3/ize_0.4.3_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "4c6ffacc7bb0c7f6bb9a3357ccf1b156a8edf4a3dfd48c1a204e5a214ed6cc71"

      def install
        bin.install "ize"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hazelops/ize/releases/download/0.4.3/ize_0.4.3_linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "c39d298b3d5722a8b40b9b231314ba4aa563a1f631f2fb2637270623a9d5e657"

      def install
        bin.install "ize"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hazelops/ize/releases/download/0.4.3/ize_0.4.3_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "f566ef5190e7aec4a4185d25f600ec6e79d8c9b63ce507686a93c636a241456b"

      def install
        bin.install "ize"
      end
    end
  end

  conflicts_with "ize-dev"

  test do
    system "#{bin}/ize"
  end
end
