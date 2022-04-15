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
      sha256 "2f48e1cfd9dbf6de355f4b194f1ac69ff6e4894f4e8c892e96bd61af78786eb0"

      def install
        bin.install "ize"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hazelops/ize/releases/download/0.0.0-dev/ize_0.0.0-dev_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "a7ac74fb54a21e08e74354121fddde2a873f4b19f01b0e791c41c41f1784612f"

      def install
        bin.install "ize"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hazelops/ize/releases/download/0.0.0-dev/ize_0.0.0-dev_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "4d1896ee10ab3958c9018071d5b7e60f024a4954104299f0c0471ec48696a93d"

      def install
        bin.install "ize"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hazelops/ize/releases/download/0.0.0-dev/ize_0.0.0-dev_linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "2cb97ff49a323e737b357dee25ae3677fa7a4990e2101331529d02aa3879f0ca"

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
