# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ize < Formula
  desc "IZE is an opinionated infrastructure wrapper that allows to use multiple tools in one infra"
  homepage "https://ize.sh/"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hazelops/ize/releases/download/0.3.0/ize_0.3.0_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "cee025706ad83d7ac32fa5c6782031fbb34ec181e3f3c9c203cd885034134bd0"

      def install
        bin.install "ize"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hazelops/ize/releases/download/0.3.0/ize_0.3.0_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "5322d3bf62b6137529d55f56d5eeb8cc67f9f45f0b1e05076853d42b09ba6656"

      def install
        bin.install "ize"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hazelops/ize/releases/download/0.3.0/ize_0.3.0_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "f26c9ed2c96bc9106876c411336971449960ee5a994144af6dc621be68a60928"

      def install
        bin.install "ize"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hazelops/ize/releases/download/0.3.0/ize_0.3.0_linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "abeb30f96b770c0e1faf8842e24276b60f169e56dade2fb5c9f82ea02d0e4f16"

      def install
        bin.install "ize"
      end
    end
  end

  test do
    system "#{bin}/ize"
  end
end
